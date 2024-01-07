# 单个玩家开始小游戏时执行
function lib:sounds/music/mini_slow
title @s clear
title @s actionbar ""

# 解锁配方
recipe give @s[team=playing] *

# 设置玩家生命
attribute @s generic.max_health base set 20
gamerule naturalRegeneration false

# 清除相关 Tag
tag @s remove respawn_protection
tag @s remove ready_tp

# 计分板重置
scoreboard players reset @s cash
scoreboard players set @s[team=playing,tag=!rejoining] cash 0

# 调整模式
gamemode spectator @s[team=!debugging]
gamemode survival @s[team=playing,tag=!rejoining]

# 传送到box顶部，1tick后随机传送
tp @s[team=playing,tag=!rejoining] -16.0 265 4984.0
function mini:main/give_effect