execute if score $double_reward mem matches 1 run function item:bonus_item/gameparty/auto/low
execute if score $double_reward mem matches 1 run tag @e[tag=bonus_item,limit=1,sort=nearest] add double_reward
function item:bonus_item/gameparty/auto/low
execute if score $double_reward mem matches 0 run execute as @e[tag=bonus_item,limit=1,sort=nearest] run data merge entity @s {NoGravity: 0b, Motion: [0.0d, 0.3d, 0.0d],PickupDelay:40}

# 处理双倍奖励
execute store result score $random mem run random value 0..1
execute if score $double_reward mem matches 1 if score $random mem matches 1 run execute as @e[tag=bonus_item,limit=1,sort=nearest,tag=double_reward] run data merge entity @s {NoGravity: 0b, Motion: [0.05d, 0.3d, 0.0d],PickupDelay:40}
execute if score $double_reward mem matches 1 if score $random mem matches 1 run execute as @e[tag=bonus_item,limit=1,sort=nearest,tag=!double_reward] run data merge entity @s {NoGravity: 0b, Motion: [-0.05d, 0.3d, 0.0d],PickupDelay:40}
execute if score $double_reward mem matches 1 if score $random mem matches 0 run execute as @e[tag=bonus_item,limit=1,sort=nearest,tag=double_reward] run data merge entity @s {NoGravity: 0b, Motion: [0.0d, 0.3d, 0.05d],PickupDelay:40}
execute if score $double_reward mem matches 1 if score $random mem matches 0 run execute as @e[tag=bonus_item,limit=1,sort=nearest,tag=!double_reward] run data merge entity @s {NoGravity: 0b, Motion: [0.0d, 0.3d, -0.05d],PickupDelay:40}

particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 normal

# 显示信息
execute if score $double_reward mem matches 0 run tellraw @a ["",{"text": ">> ","color":"red","bold": true},{"text":"奖励物资被发现：","color":"red"},{"selector": "@e[tag=bonus_item,limit=1,sort=nearest]"}]
execute if score $double_reward mem matches 1 run tellraw @a ["",{"text": ">> ","color":"red","bold": true},{"text":"奖励物资被发现：","color":"red"},{"selector": "@e[tag=bonus_item,limit=2,sort=nearest]"}]

# 杀死
kill @s[type=item]