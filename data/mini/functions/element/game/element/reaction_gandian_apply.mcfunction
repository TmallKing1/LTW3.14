# 获取玩家对应的标记
function mini:element/game/marker/find

# 获取元素附着
execute as @e[tag=found_marker] run function mini:element/game/element/get_attach

# 已标记
tag @s add gandian_checked
execute if score $element_type mem matches 3..4 run tag @s add gandian_checked1
execute if score $element_type mem matches 3..4 as @e[tag=found_marker] run function mini:element/game/marker/remove_type_tags
execute if score $element_type mem matches 3..4 run tag @e[tag=found_marker] add gandiandamage
execute if score $element_type mem matches 3..4 as @a[distance=..7,tag=!attacker,tag=!gandian_checked] at @s run function mini:element/game/element/reaction_gandian_apply