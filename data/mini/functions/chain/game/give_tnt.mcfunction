# 返还物品
execute if data entity @s Inventory[{Slot:8b}] run scoreboard players set @s item_slot 8
execute if data entity @s Inventory[{Slot:8b}] at @s run function item:pop_slot/return_item

# 给予 TNT
item replace entity @s hotbar.8 with chicken_spawn_egg{game_item:1b,display:{Name:'[{"text":"TNT","color":"white","italic":false}]'}, CanPlaceOn: ["#mini:chain_block"], EntityTag:{id: "minecraft:tnt", Fuse: 10000s, NoGravity: 1b, Tags: ["chain_tnt","player_placed"], Glowing: 1b}} 1
