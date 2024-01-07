setblock 0 0 0 jukebox replace
execute as @s[scores={shop_06_armor=1}] run data modify block 0 0 0 RecordItem set value {id: "minecraft:leather_boots",Count: 1b, tag:{display: {Name: '{"text":"皮革靴子","italic":false,"color":"gray"}'}}}
execute as @s[scores={shop_06_armor=2}] run data modify block 0 0 0 RecordItem set value {id: "minecraft:iron_boots",Count: 1b, tag:{display: {Name: '{"text":"铁靴子","italic":false,"color":"gray"}'}}}
execute as @s[scores={shop_06_armor=3}] run data modify block 0 0 0 RecordItem set value {id: "minecraft:diamond_boots",Count: 1b, tag:{display: {Name: '{"text":"钻石靴子","italic":false,"color":"white"}'}}}
execute as @s[scores={shop_06_armor=4}] run data modify block 0 0 0 RecordItem set value {id: "minecraft:netherite_boots",Count: 1b, tag:{display: {Name: '{"text":"下界合金靴子","italic":false,"color":"aqua"}'}}}
tag @s add item_op

# 盔甲判定
kill @e[type=armor_stand,tag=armor_check]
summon armor_stand 0 0 0 {NoAI: 1b, NoGravity: 1b,Invulnerable: 1b, Invisible: 1b, Tags:["armor_check"]}
item replace entity @e[type=armor_stand,tag=armor_check] weapon.mainhand from block 0 0 0 container.0
scoreboard players set $is_armor mem 0
execute as @e[type=armor_stand,tag=armor_check] store result score $is_armor mem if predicate item:bonus/armor_trim/is_armor
execute if score $is_armor mem matches 1 run function item:armor_trim/set_armor_trim

tag @s remove item_op
item replace entity @s[scores={shop_06_armor=1..4}] armor.feet from block 0 0 0 container.0
setblock 0 0 0 air destroy