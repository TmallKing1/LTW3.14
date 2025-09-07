# 调整物品：仅在纵向速度 < -0.015 且 y > 20 时，才将 NoGravity 设置为 false
execute as @e[tag=bonus_item] store result score @s temp run data get entity @s Motion[1] 1000
execute as @e[tag=bonus_item] if entity @s[x=2000,y=20,z=4000,dx=100,dy=100,dz=100,scores={temp=-15..}] run data merge entity @s {NoGravity:0b}
execute as @e[tag=bonus_item] unless entity @s[x=2000,y=20,z=4000,dx=100,dy=100,dz=100,scores={temp=-15..}] run data merge entity @s {NoGravity:1b}

# 伤害值
execute as @a[tag=mini_running] run function mini:potion/game/handle_damage

# 若玩家使用了药水
execute as @a[tag=mini_running,scores={potionUse=1..}] run function mini:potion/game/use_potion
execute as @a[tag=mini_running,scores={splashPotionUse=1..}] run function mini:potion/game/use_potion

# 检测玩家物品
## 若玩家未持有 has_potion 标签，则检测最后一格是否为空瓶
execute as @a[tag=mini_running,tag=!has_potion] unless data entity @s Inventory[{Slot: 8b, id:"minecraft:glass_bottle", tag:{game_item: 1b}}] run function mini:potion/game/give_bottle
## 若玩家持有 has_potion 标签
execute as @a[tag=mini_running,tag=has_potion,scores={potionType=0}] unless data entity @s Inventory[{Slot: 8b, id:"minecraft:splash_potion", tag:{game_item: 1b}}] run function mini:potion/game/give_potion
execute as @a[tag=mini_running,tag=has_potion,scores={potionType=1}] unless data entity @s Inventory[{Slot: 8b, id:"minecraft:potion", tag:{game_item: 1b}}] run function mini:potion/game/give_potion

# 玩家当前生命值不为 20 时计算生命差值
execute as @a[scores={health=..19}] run function mini:potion/game/handle_health

# 显示标题栏
title @a[tag=mini_running] actionbar [{"text": "剩余生命值 ","color": "green"},{"score":{"name": "*","objective": "health_virt"},"color": "yellow"}]