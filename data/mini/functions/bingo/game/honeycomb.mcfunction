# 清理物品
clear @s honeycomb{game_item:1b}

# 返还物品
execute if data entity @s Inventory[{Slot:8b}] run scoreboard players set @s item_slot 8
execute if data entity @s Inventory[{Slot:8b}] at @s run function item:pop_slot/return_item

# 设置最后一格的物品
item replace entity @s hotbar.8 with honeycomb{game_item:1b,display:{Name:'[{"text":"目标查看","color":"white","italic":false}]',Lore:['[{"text":"当你手持该蜜脾时，查看目标所用的矿车将会出现在你面前","italic":false,"color":"gray"}]']},HideFlags:32767}