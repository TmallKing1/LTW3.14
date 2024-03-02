clear @s snowball{game_item:1b}

# 返还格子上的物品
execute if data entity @s Inventory[{Slot:8b}] run scoreboard players set @s item_slot 8
execute if data entity @s Inventory[{Slot:8b}] at @s run function item:pop_slot/return_item

item replace entity @s[scores={attack_count=0}] hotbar.8 with snowball{game_item:1b,HideFlags:1,display:{Name:'{"text":"雪球","italic":false}'},CanDestroy:["minecraft:decorated_pot"]} 1
item replace entity @s[scores={attack_count=1..}] hotbar.8 with snowball{game_item:1b,HideFlags:1,Enchantments:[{id:"minecraft:infinity",lvl:1}],display:{Name:'{"text":"附魔雪球","italic":false}'},CanDestroy:["minecraft:decorated_pot"]} 1
scoreboard players set @s countdown_fast -1