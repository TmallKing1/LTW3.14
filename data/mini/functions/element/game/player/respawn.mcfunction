execute as @e[tag=teleport_point,tag=!teleported,limit=1,sort=random] run tag @s add being_teleported
tp @s @e[tag=being_teleported,limit=1]
tag @e[tag=being_teleported] add teleported
tag @e remove being_teleported
tag @s remove respawning

# 设置玩家生命
attribute @s generic.max_health base set 30
effect give @s regeneration 1 10
gamemode adventure @s
playsound entity.enderman.teleport player @s ~ ~ ~