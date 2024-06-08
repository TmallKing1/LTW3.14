# 获取受伤者的标记
function mini:element/game/marker/find
tag @e[tag=found_marker] add target
tag @s add element_damage_taken

# 移除受伤者的伤害类型标签
execute as @e[tag=target] run function mini:element/game/marker/remove_type_tags

# 风元素
execute if score $element_self mem matches 1 run scoreboard players set $damage mem 20

# 岩元素
execute if score $element_self mem matches 2 run scoreboard players set $damage mem 30

# 雷-冰
execute if score $element_self mem matches 3 run scoreboard players set $damage mem 24
execute if score $element_self mem matches 4 run scoreboard players set $damage mem 18
execute if score $element_self mem matches 5 run scoreboard players set $damage mem 18
execute if score $element_self mem matches 6 run scoreboard players set $damage mem 20
execute if score $element_self mem matches 3 run effect give @s glowing 15 0 true
execute if score $element_self mem matches 6 run effect give @s slowness 10 0 true

# 获取目标标记的附着元素
execute as @e[tag=target] run function mini:element/game/element/get_attach
scoreboard players operation $element_target mem = $element_type mem

# 元素附着与反应
tag @e[tag=target] add burst
function mini:element/game/element/reaction

# 造成伤害
execute as @s run function mini:element/game/damage/damage_by

# 清除标记的标签
tag @e remove target
tag @a remove element_damage_taken