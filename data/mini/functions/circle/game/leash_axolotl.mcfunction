tag @s add ready_to_be_leashed
execute on leasher if score @s kills matches -2147483648..2147483647 run tag @e[tag=ready_to_be_leashed] add leashed
tag @e remove ready_to_be_leashed