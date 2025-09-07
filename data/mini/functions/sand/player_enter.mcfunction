# 单个玩家开始小游戏时执行
function lib:sounds/music/mini_middle
title @s clear
title @s actionbar ""

# 给予状态效果
effect clear @s
function mini:main/give_effect

# 设置玩家生命
attribute @s generic.max_health base set 10
effect give @s instant_health 1 0 true

# 传送玩家
execute unless score $ley_line_disorder mem matches -1 run tp @s[team=playing,tag=!rejoining] 2029.5 22 3014.5 90 0
execute if score $ley_line_disorder mem matches -1 run tp @s[team=playing,tag=!rejoining] 2014.5 23.00 3014.5 

# 重置记分板
scoreboard players reset @s gold_ingame
scoreboard players set @s[team=playing,tag=!rejoining] gold_ingame 0
scoreboard players reset @s gold_inhand
scoreboard players set @s[team=playing,tag=!rejoining] gold_inhand 0
scoreboard players reset @s kills_auto

tag @s[tag=!debugging] add effect_bought
tag @s[team=playing,tag=!rejoining] remove effect_bought

# 调整模式
gamemode spectator @s[team=!debugging]
gamemode survival @s[team=playing,tag=!rejoining]

# 重新加入处理
execute if entity @s[tag=rejoining] run function mini:main/player_failed