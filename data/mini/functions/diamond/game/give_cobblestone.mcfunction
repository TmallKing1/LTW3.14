give @s cobblestone
scoreboard players remove #cobblestone_count temp 1
execute if score #cobblestone_count temp matches 1.. run function mini:diamond/game/give_cobblestone
