execute if score $ley_line_disorder mem matches 3 if entity @a[tag=koth_damage_taken] at @s run scoreboard players remove @a[tag=koth_damage_taken] power_count 2
execute if score $ley_line_disorder mem matches 3 run scoreboard players set @a[tag=mini_running,scores={power_count=..-1}] power_count 0
# 结束伤害判断
tag @a remove koth_damage_taken
