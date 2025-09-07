# 单个玩家开始小游戏时执行
function lib:sounds/music/mini_slow
title @s clear
title @s actionbar ""

# 解锁配方
recipe give @s[team=playing] *
recipe take @s mini:hopper_from_raw

# 设置玩家生命
attribute @s generic.max_health base set 20

# 计分板重置
tag @s remove diamond_got
scoreboard players reset @s diamond_count
scoreboard players reset @s diamond_disp
scoreboard players set @s[team=playing,tag=!rejoining] diamond_count 0

# 调整模式
gamemode spectator @s[team=!debugging]
gamemode survival @s[team=playing,tag=!rejoining]

# 执行重生方法
tag @s remove respawning
function mini:diamond/game/respawn
