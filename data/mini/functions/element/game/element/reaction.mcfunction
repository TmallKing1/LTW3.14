# 风元素
execute if score $element_self mem matches 1 run tag @e[tag=target] add anemodamage
execute if score $element_self mem matches 1 unless score $element_target mem matches 0 as @p[tag=element_damage_taken] at @s run function mini:element/game/element/reaction_kuosan

# 岩元素
execute if score $element_self mem matches 2 run tag @e[tag=target] add geodamage
execute if score $element_self mem matches 2 unless score $element_target mem matches 0 as @p[tag=element_damage_taken] at @s run function mini:element/game/element/reaction_jiejing

# 雷元素
execute if score $element_self mem matches 3 run tag @e[tag=target] add electrodamage
execute if score $element_self mem matches 3 as @p[tag=element_damage_taken] at @s run function mini:element/game/element/3_electro_attach

# 水元素
execute if score $element_self mem matches 4 run tag @e[tag=target] add hydrodamage
execute if score $element_self mem matches 4 as @p[tag=element_damage_taken] at @s run function mini:element/game/element/4_hydro_attach

# 火元素
execute if score $element_self mem matches 5 run tag @e[tag=target] add pyrodamage
execute if score $element_self mem matches 5 as @p[tag=element_damage_taken] at @s run function mini:element/game/element/5_pyro_attach

# 冰元素
execute if score $element_self mem matches 6 run tag @e[tag=target] add cryodamage
execute if score $element_self mem matches 6 as @p[tag=element_damage_taken] at @s run function mini:element/game/element/6_cryo_attach