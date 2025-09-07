# 流失能量值
execute store result score $random mem run random value 1..3
scoreboard players operation $random mem *= @s damageTaken
scoreboard players operation $random mem /= #10 mem
scoreboard players operation @s power_count -= $random mem