execute unless data entity @s data.elements[0] run scoreboard players set $element_type mem 0
execute if data entity @s data.elements[0] store result score $element_type mem run data get entity @s data.elements[0]