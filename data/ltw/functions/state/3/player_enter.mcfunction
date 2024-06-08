# 对单个玩家的处理（如果玩家中途加入就会执行此函数）
title @s clear
title @s actionbar ""

# 显示 Title
title @s times 5t 53t 2t
title @s subtitle ""
execute if score $round mem matches 1..6 if score $double_reward mem matches 1 run title @s subtitle {"text": "双倍奖励!","color": "light_purple"}
execute if score $round mem matches 0 run title @s title {"text":"活动轮","color":"aqua"}
execute if score $round mem matches 1..5 run title @s title ["第 ",{"score": {"objective": "mem","name": "$round"}},"/6 轮"]
execute if score $round mem matches 6 run title @s title {"text":"最终轮","color":"gold"}

# 状态效果
effect clear @s
effect give @s saturation infinite 0 true
effect give @s blindness infinite 0 true

# 音效
execute at @s run function lib:sounds/levelup
