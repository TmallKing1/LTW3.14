# 每个道具检测
execute unless score @s powerup_current matches 17 run tag @s[scores={powerup_00017=5..}] add switch_on
execute unless score @s powerup_current matches 17 run scoreboard players set @s[scores={powerup_00017=5..}] powerup_current 17
execute if score @s powerup_current matches 17 run scoreboard players set @s[scores={powerup_00017=5..},tag=!switch_on] powerup_current 0
execute run tag @s[scores={powerup_00017=0..4}] add switch
tag @s add detected_powerup