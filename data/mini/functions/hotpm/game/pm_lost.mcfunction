# 玩家失去土豆时执行
tag @s remove pm_holding
execute if score $ley_line_disorder mem matches -1 run scoreboard players reset @s pm_harmless

effect clear @s glowing
effect clear @s speed
effect give @s speed 2 5 true
