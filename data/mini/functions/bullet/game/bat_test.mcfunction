# 标记
tag @s add tagged_bat

# 没有村民时，自杀
scoreboard players set $success mem 0
execute as @e[type=villager,tag=bullet_entity] if score @s villager_id = @e[tag=tagged_bat,limit=1] villager_id run scoreboard players add $success mem 1
execute if score $success mem matches 0 run kill

# 清理
tag @e remove tagged_bat