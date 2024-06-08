# 单个玩家开始小游戏时执行
function lib:sounds/music/mini_fast
title @s clear
title @s actionbar ""

# 给予状态效果
effect clear @s
function mini:main/give_effect

# 设置玩家生命
attribute @s generic.max_health base set 40
effect give @s regeneration 2 15 true

# 设置初始攻击力加成和能量值
scoreboard players reset @s last_damage_type
scoreboard players reset @s last_damage_UUID
scoreboard players reset @s player_atk
scoreboard players reset @s player_energy
scoreboard players reset @s countdown_fast
scoreboard players set @s[team=playing,tag=!rejoining] player_atk 0
scoreboard players set @s[team=playing,tag=!rejoining] player_energy 50
scoreboard players set @s[team=playing,tag=!rejoining] kills 0

# 设置初始充能状态
tag @s remove powered

# 传送玩家（重生）
execute if entity @s[team=playing,tag=!rejoining] run function mini:power/game/respawn

# 调整模式
gamemode spectator @s[team=!debugging]
gamemode adventure @s[team=playing,tag=!rejoining]

# 重新加入处理
execute if entity @s[tag=rejoining] run gamemode spectator
