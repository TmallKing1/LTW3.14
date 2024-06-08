scoreboard players set $burst_type mem 0
execute if score @s anemo_count matches 3.. run scoreboard players set $burst_type mem 1
execute if score @s geo_count matches 3.. run scoreboard players set $burst_type mem 2
execute if score @s electro_count matches 3.. run scoreboard players set $burst_type mem 3
execute if score @s hydro_count matches 3.. run scoreboard players set $burst_type mem 4
execute if score @s pyro_count matches 3.. run scoreboard players set $burst_type mem 5
execute if score @s cryo_count matches 3.. run scoreboard players set $burst_type mem 6