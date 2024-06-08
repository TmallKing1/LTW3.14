# 单个玩家开始小游戏时执行
function lib:sounds/music/mini_middle
title @s clear
title @s actionbar ""

# 给予状态效果
effect clear @s
function mini:main/give_effect

# 删除标签
tag @s remove summon_axolotl

# 设置玩家生命
attribute @s generic.max_health base set 20

# 计分板重置
scoreboard players reset @s kills
scoreboard players set @s[team=playing,tag=!rejoining] kills 0
scoreboard players reset @s kill_streak
scoreboard players set @s[team=playing,tag=!rejoining] kill_streak 0
scoreboard players reset @s last_damage_UUID

# 传送玩家（重生）
execute as @s[team=playing,tag=!rejoining] at @s run function mini:circle/game/respawn

# 调整模式
gamemode spectator @s[team=!debugging]
gamemode adventure @s[team=playing,tag=!rejoining]

# 重新加入处理
execute if entity @s[tag=rejoining] run gamemode spectator