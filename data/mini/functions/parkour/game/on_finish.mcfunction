# 回城营火
tag @s remove parkour_portal
function lib:sounds/teleport
tp ~5 ~-4 ~-12
execute unless score $ley_line_disorder mem matches -1 if entity @s[tag=mini_running] run function mini:parkour/player_finished
execute if score $ley_line_disorder mem matches -1 run function mini:parkour/game/give_power