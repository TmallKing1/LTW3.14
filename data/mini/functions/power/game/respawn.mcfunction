tag @e[tag=spawn_point,tag=!occupied,sort=random,limit=1] add selected_spawn_point
tp @s @e[tag=selected_spawn_point, limit=1]
tag @e[tag=selected_spawn_point] add occupied
tag @e remove selected_spawn_point
gamemode adventure @s
playsound entity.enderman.teleport player @s ~ ~ ~

# 设置最大生命值
attribute @s generic.max_health base set 40
effect give @s regeneration 2 15 true
effect give @s resistance 5 4 true
effect give @s weakness 5 10 true