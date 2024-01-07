execute as @a[team=playing] store result score @s posX run data get entity @s Pos[0] 10
execute as @a[team=playing] store result score @s posY run data get entity @s Pos[1] 10
execute as @a[team=playing] store result score @s posZ run data get entity @s Pos[2] 10

# 清除死亡保护 Tag
execute as @a[team=playing] unless data entity @s active_effects[{id: "minecraft:resistance", amplifier: 5b}] run tag @s remove respawn_protection

# 检测漏斗矿车
execute as @e[type=hopper_minecart,tag=!initialized] at @s run function mini:hopper/game/hopper_mc/initialize
execute as @e[type=hopper_minecart,tag=initialized] at @s run function mini:hopper/game/hopper_mc/item_test

# 清理玩家所拥有的漏斗矿车内的物品
clear @a #mini:hopper/hopper_item{hopper_item: 1b}