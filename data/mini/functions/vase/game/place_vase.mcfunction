function mini:vase/game/get_position
function mini:vase/game/place_vase1 with storage mini:vase
scoreboard players remove $vase_count mem 1
execute if score $vase_count mem matches 1.. run function mini:vase/game/place_vase