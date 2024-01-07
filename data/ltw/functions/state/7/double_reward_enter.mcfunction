# 单个玩家进入双倍奖励模式
execute at @s run function lib:sounds/levelup

# 显示双倍奖励提示
tellraw @s ["",{"text": ">> ","color": "aqua","bold": true},{"text":"现在是第 2 轮奖励选择!","color": "aqua"}]

# Tag 处理
tag @s[tag=mini_rank1_] add mini_rank1
tag @s[tag=mini_rank2_] add mini_rank2
tag @s[tag=mini_rank3_] add mini_rank3
tag @s[tag=mini_rank4_] add mini_rank4
tag @s remove mini_rank1_
tag @s remove mini_rank2_
tag @s remove mini_rank3_
tag @s remove mini_rank4_

# 自由旁观
gamemode spectator
spectate