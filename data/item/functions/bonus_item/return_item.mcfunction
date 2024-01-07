setblock 0 0 0 jukebox replace
data modify block 0 0 0 RecordItem set from storage item:bonus item
data modify block 0 0 0 RecordItem.tag.bonus_new set value 0b
tag @s add item_op

# 盔甲判定
kill @e[type=armor_stand,tag=armor_check]
summon armor_stand 0 0 0 {NoAI: 1b, NoGravity: 1b,Invulnerable: 1b, Invisible: 1b, Tags:["armor_check"]}
item replace entity @e[type=armor_stand,tag=armor_check] weapon.mainhand from block 0 0 0 container.0
scoreboard players set $is_armor mem 0
execute as @e[type=armor_stand,tag=armor_check] store result score $is_armor mem if predicate item:bonus/armor_trim/is_armor
execute if score $is_armor mem matches 1 run function item:armor_trim/set_armor_trim

setblock 0 0 0 air destroy
execute as @e[tag=!bonus_old,tag=!bonus_item,type=item,nbt={"Item":{"tag":{"is_bonus":1b}}},limit=1] run function item:bonus_item/tp
tag @s remove item_op