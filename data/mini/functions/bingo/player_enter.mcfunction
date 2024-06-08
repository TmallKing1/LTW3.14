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
scoreboard players reset @s quest_complete
scoreboard players set @s[team=playing,tag=!rejoining] quest_complete 0

# 重置任务完成状态
tag @s remove bingo_finished
tag @s remove quest_complete_1
tag @s remove quest_complete_2
tag @s remove quest_complete_3
tag @s remove quest_complete_4
tag @s remove quest_complete_5
tag @s remove quest_complete_6
tag @s remove quest_complete_7
tag @s remove quest_complete_8
tag @s remove quest_complete_9

# 调整模式
gamemode spectator @s[team=!debugging]
gamemode survival @s[team=playing,tag=!rejoining]

# 执行重生方法
tag @s remove respawning
function mini:bingo/game/respawn
