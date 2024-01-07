execute if score $element_type mem matches 0 run function mini:element/game/item/summon_random
execute if score $element_type mem matches 1 run function mini:element/game/item/summon_anemo
execute if score $element_type mem matches 2 run function mini:element/game/item/summon_geo
execute if score $element_type mem matches 3 run function mini:element/game/item/summon_electro
execute if score $element_type mem matches 4 run function mini:element/game/item/summon_hydro
execute if score $element_type mem matches 5 run function mini:element/game/item/summon_pyro
execute if score $element_type mem matches 6 run function mini:element/game/item/summon_cryo

tag @s remove resp