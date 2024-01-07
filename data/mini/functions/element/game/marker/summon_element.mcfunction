summon marker ~ ~ ~ {Tags:["elem","element_marker"]}
execute store result entity @e[tag=elem,limit=1] data.element_type int 1 run scoreboard players get $element_type mem
execute as @e[tag=elem] at @s run function mini:element/game/item/summon
tag @e remove elem