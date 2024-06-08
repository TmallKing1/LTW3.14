execute store result storage mini:element Damage.Damage double 0.5 run scoreboard players get $damage mem
execute if score $ley_line_disorder mem matches 1 if score $element_enhance mem = $element_self mem store result storage mini:element Damage.Damage double 0.625 run scoreboard players get $damage mem
function mini:element/game/damage/damage_by1 with storage mini:element Damage
scoreboard players set @s damage_cd 10