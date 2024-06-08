scoreboard players remove $burst_count mem 1
execute store result storage mini:element element_buffer int 1 run random value 1..6
data modify entity @e[tag=found_marker,limit=1] data.elements prepend from storage mini:element element_buffer
execute if score $burst_count mem matches 1.. run function mini:element/game/player/burst_recover