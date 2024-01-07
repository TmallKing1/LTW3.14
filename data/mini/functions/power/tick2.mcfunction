# 解除占用重生点
tag @e[tag=spawn_point] remove occupied

# 替换玩家物品
execute as @a[tag=mini_running] unless data entity @s Inventory[{Slot: 8b, id: "minecraft:iron_sword", tag: {game_item: 1b}}] at @s run function mini:power/game/give_sword

# 检测攻击加成物品周围是否有玩家
execute as @e[tag=atk_boost_item] at @s if entity @a[distance=..1,tag=mini_running] run function mini:power/game/pick_atk_add

# 检测能量增加物品周围是否有玩家
execute as @e[tag=power_add_item] at @s if entity @a[distance=..1,tag=mini_running,scores={player_energy=..99}] run function mini:power/game/pick_power_add

# 玩家掉虚空死亡
execute as @a[tag=mini_running,x=978,y=-80,z=18978,dx=88,dy=-30,dz=88] run kill

# 玩家速度和发光效果
effect give @a[tag=mini_running,tag=powered] speed 1 1
effect give @a[tag=mini_running,tag=powered] glowing 1 1 true

# 玩家状态栏
execute as @a[tag=mini_running] unless score @s countdown_fast matches 1.. run function mini:power/game/player_actionbar

# 清理鱼钩
kill @e[type=fishing_bobber]