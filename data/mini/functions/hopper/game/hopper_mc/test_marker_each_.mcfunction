data modify storage mini:hopper waiting_sell_buff set from storage mini:hopper waiting_sell.id
scoreboard players set $success_temp mem 1
execute store success score $success_temp mem run data modify storage mini:hopper waiting_sell_buff set from entity @s data.item
execute if score $success_temp mem matches 0 run tag @s add sell_item_marker