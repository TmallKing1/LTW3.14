# 1.2 版本签到活动
#tellraw @s[tag=!reward_1_2] ["",{"text": ">> ","color": "green","bold": true},{"text": "成功领取奖励：魔法符咒 *10 + 金块 *2！","color": "green"}]
#tellraw @s[tag=reward_1_2] ["",{"text": ">> ","color": "red","bold": true},{"text": "你已经领取过奖励了……","color": "red"}]
#execute as @s[tag=!reward_1_2] at @s run function lib:sounds/levelup
#execute as @s[tag=reward_1_2] at @s run function lib:sounds/error
#scoreboard players add @s[tag=!reward_1_2] primogem 640
#scoreboard players add @s[tag=!reward_1_2] gold 162
#execute as @s[tag=!reward_1_2] at @s run function item:shop/refresh_gold
#execute as @s[tag=!reward_1_2] at @s run function item:shop/refresh_essence
#tag @s add reward_1_2
