execute as @e[tag=container] at @s if block ~ ~ ~ minecraft:furnace if data block ~ ~ ~ Items[{id: "minecraft:nether_star"}] run function item:container/explode
execute as @e[tag=container] at @s if block ~ ~ ~ #item:container if data block ~ ~ ~ Items[{id: "minecraft:command_block"}] run function item:container/explode