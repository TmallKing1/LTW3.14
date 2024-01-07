kill @e[type=marker,tag=map_gen]
scoreboard players set $hopper_layer mem 0
summon marker -32 232 4968 {Tags: ["map_gen"]}
function mini:hopper/game/map_gen/schedule