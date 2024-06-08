# 单个玩家开始小游戏时执行
function lib:sounds/music/mini_fast
title @s clear
title @s actionbar ""

# 给予状态效果
effect clear @s
function mini:main/give_effect

# 传送玩家（重生）
scoreboard players reset @s kills
scoreboard players set @s[team=playing,tag=!rejoining] damage_cd 0
scoreboard players set @s[team=playing,tag=!rejoining] kills 0
execute if entity @s[team=playing,tag=!rejoining] run function mini:element/game/player/respawn
tag @s remove respawning

# 生成玩家的标记
execute if entity @s[team=playing,tag=!rejoining] run tag @s add smmk
execute if entity @s[team=playing,tag=!rejoining] summon marker run function mini:element/game/marker/summon

tag @s[team=playing,tag=!rejoining] add count_act
tag @s[tag=rejoining] remove count_act

# 调整模式
gamemode spectator @s[team=!debugging]
gamemode adventure @s[team=playing,tag=!rejoining]

# 重置活动数据
scoreboard players add @s element_reaction 0
scoreboard players add @s element_burst 0
scoreboard players add @s act_turns 0

# 重新加入处理
gamemode spectator @s[tag=rejoining]