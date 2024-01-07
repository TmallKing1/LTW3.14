execute as @e[tag=teleport_point,tag=!teleported,limit=1,sort=random] run tag @s add being_teleported
tp @s @e[tag=being_teleported,limit=1]
tag @e[tag=being_teleported] add teleported
tag @e remove being_teleported
tag @s remove respawning
gamemode adventure @s
playsound entity.enderman.teleport player @s ~ ~ ~