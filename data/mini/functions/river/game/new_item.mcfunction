execute if score $double_reward mem matches 1 run function item:bonus_item/gameparty/auto/low
execute if score $double_reward mem matches 1 run tag @e[tag=bonus_item,limit=1,sort=nearest] add double_reward
function item:bonus_item/gameparty/auto/low
execute if score $double_reward mem matches 0 run execute as @e[tag=bonus_item,limit=1,sort=nearest] run data merge entity @s {NoGravity: 0b, Motion: [0.0d, 0.6d, 0.0d]}

# 处理双倍奖励
execute if score $double_reward mem matches 1 run execute as @e[tag=bonus_item,limit=1,sort=nearest,tag=double_reward] run data merge entity @s {NoGravity: 0b, Motion: [0.0d, 0.6d, 0.1d]}
execute if score $double_reward mem matches 1 run execute as @e[tag=bonus_item,limit=1,sort=nearest,tag=!double_reward] run data merge entity @s {NoGravity: 0b, Motion: [0.0d, 0.6d, -0.1d]}

# 显示信息
execute if score $double_reward mem matches 0 run tellraw @a ["",{"text": ">> ","color":"red","bold": true},{"selector": "@s"},{"text":" 运输了奖励物资：","color":"red"},{"selector": "@e[tag=bonus_item,limit=1,sort=nearest]"}]
execute if score $double_reward mem matches 1 run tellraw @a ["",{"text": ">> ","color":"red","bold": true},{"selector": "@s"},{"text":" 运输了奖励物资：","color":"red"},{"selector": "@e[tag=bonus_item,limit=2,sort=nearest]"}]