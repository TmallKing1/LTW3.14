# 单个玩家开始小游戏时执行
function lib:sounds/music/mini_fast
title @s clear
title @s actionbar ""

# 给予状态效果
effect clear @s
function mini:main/give_effect

# 设置玩家生命
attribute @s generic.max_health base set 20

# 传送玩家（重生）
scoreboard players reset @s kills
scoreboard players set @s[team=playing,tag=!rejoining] damage_cd 0
scoreboard players set @s[team=playing,tag=!rejoining] kills 0
execute if entity @s[team=playing,tag=!rejoining] run function mini:element/game/player/respawn
tag @s remove respawning

# 生成玩家的标记
execute if entity @s[team=playing,tag=!rejoining] run tag @s add smmk
execute if entity @s[team=playing,tag=!rejoining] summon marker run function mini:element/game/marker/summon

# 调整模式
gamemode spectator @s[team=!debugging]
gamemode adventure @s[team=playing,tag=!rejoining]

# 重新加入处理
execute if entity @s[tag=rejoining] run gamemode spectator
