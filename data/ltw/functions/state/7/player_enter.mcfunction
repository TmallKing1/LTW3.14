# 对单个玩家的处理（如果玩家中途加入就会执行此函数）
title @s clear
title @s actionbar ""

# 状态效果
effect clear @s
effect give @s saturation infinite 0 true
effect give @s resistance infinite 4 true

# 传送玩家
tp @s[team=!debugging] 24.5 11.0 1967.5 112.5 25
execute at @s run function lib:sounds/travel

# 清除 Tag
tag @s[team=watching] remove mini_rank1
tag @s[team=watching] remove mini_rank2
tag @s[team=watching] remove mini_rank3
tag @s[team=watching] remove mini_rank4
tag @s[tag=rejoining] remove mini_rank1
tag @s[tag=rejoining] remove mini_rank2
tag @s[tag=rejoining] remove mini_rank3
tag @s[tag=rejoining] remove mini_rank4
tag @s remove selecting

# 双倍奖励 Tag
tag @s remove mini_rank1_
tag @s remove mini_rank2_
tag @s remove mini_rank3_
tag @s remove mini_rank4_
execute if score $double_reward mem matches 1 run tag @s[tag=mini_rank1] add mini_rank1_
execute if score $double_reward mem matches 1 run tag @s[tag=mini_rank2] add mini_rank2_
execute if score $double_reward mem matches 1 run tag @s[tag=mini_rank3] add mini_rank3_
execute if score $double_reward mem matches 1 run tag @s[tag=mini_rank4] add mini_rank4_

# 显示双倍奖励提示
execute if score $double_reward mem matches 1 run tellraw @s ["",{"text": ">> ","color": "aqua","bold": true},{"text":"现在是第 1 轮奖励选择!","color": "aqua"}]

# 自由旁观
gamemode spectator @s[team=!debugging]
spectate
