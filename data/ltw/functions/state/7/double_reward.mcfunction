# 双倍奖励：重置并再生成一次奖励物品
scoreboard players set $double_reward mem 0
execute as @a[team=!debugging] run function ltw:state/7/double_reward_enter

# 清除选择中 Tag
tag @a remove selecting

# 生成奖励
function ltw:state/6/generate_bonus

# 初始化倒计时
scoreboard players set $countdown mem 5

scoreboard players set $first_selection mem 1