execute as @e[tag=tnt_indicator] at @s facing entity @e[tag=targeted_tnt,limit=1] eyes run tp ^ ^ ^1
execute at @e[tag=tnt_indicator] run particle crit ~ ~ ~ 0 0 0 0 0 force @s
execute as @e[tag=tnt_indicator] at @s if entity @e[tag=targeted_tnt,distance=..1.5] run kill
execute if entity @e[tag=tnt_indicator] run function mini:chain/game/tnt_indicator1