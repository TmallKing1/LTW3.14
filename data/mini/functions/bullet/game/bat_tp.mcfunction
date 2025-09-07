# 标记
tag @s add tagged_villager

# 传送蝙蝠
scoreboard players set $success mem 0
execute as @e[type=silverfish,tag=bullet_entity] if score @s villager_id = @e[tag=tagged_villager,limit=1] villager_id run tp @s ~ ~2 ~
execute as @e[type=silverfish,tag=bullet_entity] if score @s villager_id = @e[tag=tagged_villager,limit=1] villager_id run scoreboard players add $success mem 1

# 没有蝙蝠时，自杀
execute if score $success mem matches 0 run tp @s ~ -100 ~
execute if score $success mem matches 0 run kill

# 清理
tag @e remove tagged_villager