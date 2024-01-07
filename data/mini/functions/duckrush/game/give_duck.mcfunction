clear @s chicken_spawn_egg{game_item: 1b}
scoreboard players set @s countdown_fast -1

# 返还格子上的物品
execute if data entity @s Inventory[{Slot: 8b}] run scoreboard players set @s item_slot 8
execute if data entity @s Inventory[{Slot: 8b}] at @s run function item:pop_slot/return_item

item replace entity @s hotbar.8 with chicken_spawn_egg{game_item: 1b, display: {Name: '{"text":"这是只因还是鸭？","color":"aqua","italic":false}'}, CanPlaceOn: ["#mini:duckrush_block"], HideFlags: 16,EntityTag:{Tags:["new_duck","harmless_duck","from_player","player_direction"]}} 1