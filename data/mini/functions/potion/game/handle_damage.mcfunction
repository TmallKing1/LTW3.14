# 若当前造成伤害值大于等于 1
execute if score @s damage_dealt matches 1.. run scoreboard players operation @s damage_dealt_pure += @s damage_dealt
execute if score @s damage_dealt matches 1.. run scoreboard players operation @s damage_dealt_pure -= @s damageTaken

scoreboard players set @s damage_dealt 0
scoreboard players set @s damageTaken 0