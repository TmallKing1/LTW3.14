# 每个道具检测
execute unless score @s powerup_current matches 15 run tag @s[scores={powerup_00015=1..}] add switch_on
execute unless score @s powerup_current matches 15 run scoreboard players set @s[scores={powerup_00015=1..}] powerup_current 15
execute if score @s powerup_current matches 15 run scoreboard players set @s[scores={powerup_00015=1..},tag=!switch_on] powerup_current 0
execute run tag @s[scores={powerup_00015=0}] add switch
tag @s add detected_powerup