# 检测副手施放元素爆发
execute if data entity @s Inventory[{Slot: -106b, id: "minecraft:wooden_sword",tag:{game_item: 1b}}] run function mini:element/game/player/burst

clear @s wooden_sword{game_item:1b}

# 返还格子上的物品
execute if data entity @s Inventory[{Slot:8b}] run scoreboard players set @s item_slot 8
execute if data entity @s Inventory[{Slot:8b}] at @s run function item:pop_slot/return_item

item replace entity @s hotbar.8 with wooden_sword{game_item:1b,display:{Name:'{"text":"元素木剑","color":"gold","italic":false}'},AttributeModifiers:[{UUID:[I;2,0,2,1],Amount:10,AttributeName:"generic.attack_damage",Name:"attack",Slot:"mainhand",Operation:0}],HideFlags:63,Unbreakable:1b}