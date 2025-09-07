execute store result score $arrow_owner temp run data get entity @s Owner[0]
execute as @a[tag=mini_running] if score @s UUID = $arrow_owner temp run scoreboard players add @s crit_arrow_shot 1
execute unless score #gamemode mem matches 2 run advancement grant @a[scores={crit_arrow_shot=20..}] only ltw:parkour/arrow1