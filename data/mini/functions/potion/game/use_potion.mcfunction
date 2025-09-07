execute if entity @s[scores={potionUse=1..}] run scoreboard players add @s health_virt 8
execute if score $ley_line_disorder mem matches -1 if entity @s[scores={potionUse=1..}] at @s run scoreboard players add @a[distance=0.01..5,tag=mini_running] health_virt 4
tag @s add potion_adv_failed
scoreboard players set @a[scores={health_virt=201..}] health_virt 200

scoreboard players set @s potionUse 0
scoreboard players set @s splashPotionUse 0

tag @s remove has_potion