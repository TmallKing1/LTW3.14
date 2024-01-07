# 玩家掉河检测
execute as @a[tag=mini_running] at @s if block ~ ~ ~ water run function mini:river/player_lose_heart
execute as @a[tag=mini_running] at @s if block ~ ~1 ~ water run function mini:river/player_lose_heart

# 检测物资交互实体
execute as @e[tag=river_entity,type=interaction,tag=mats_exist] at @s if data entity @s interaction run function mini:river/game/test_interaction
execute as @e[tag=river_entity,type=interaction] at @s if data entity @s interaction run data remove entity @s interaction

# 若没有待领取的普通物资，则再生成一批
execute unless entity @e[tag=basic,type=interaction,tag=mats_exist] unless entity @a[tag=has_mats_basic] if entity @a[tag=mini_running] run function mini:river/game/new_mats

# 拥有物资的玩家的物品替换
execute as @a[tag=mini_running,tag=has_mats_basic] unless data entity @s Inventory[{Slot: 8b, id: "minecraft:chest", tag: {game_item: 1b}}] run function mini:river/game/give_mats
execute as @a[tag=mini_running,tag=has_mats_speci] unless data entity @s Inventory[{Slot: 8b, id: "minecraft:ender_chest", tag: {game_item: 1b}}] run function mini:river/game/give_mats

# 拥有物资的玩家具有虚弱与发光效果
execute unless score $ley_line_disorder mem matches 2 run effect give @a[tag=mini_running,tag=has_mats] weakness 1 114 true
effect give @a[tag=mini_running,tag=has_mats] glowing 1 0 true
execute if score $ley_line_disorder mem matches 1 run effect give @a[tag=mini_running,tag=has_mats] slowness 1 1 true

# 成功运输物资的玩家
execute as @a[x=1001,y=18,z=16001,dx=5,dy=5,dz=29,tag=has_mats] at @s run function mini:river/game/transport_success

# 给予进度
execute if score $timer_max mem matches ..10 run advancement grant @a[tag=mini_running,scores={tran_mats=1..}] only ltw:parkour/river2