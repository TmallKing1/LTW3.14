execute store result storage ltw:world Stage.Index int 1 run scoreboard players get $world_stage_index mem
scoreboard players operation $index mem = $world_stage_index mem
function lib:arrays/get_temp
data modify storage ltw:world Stage merge from storage lib:arrays Output
function ltw:state/0/world/summon2 with storage ltw:world Stage
scoreboard players add $world_stage_index mem 1
execute if score $world_stage_index mem <= $world_stage_max mem run function ltw:state/0/world/summon1