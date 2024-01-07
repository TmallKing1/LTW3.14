# 使对应的marker价值翻 $multiply_value mem 倍
execute store result score $value_temp mem run data get entity @s data.value
scoreboard players operation $value_temp mem *= $multiply_value mem
execute store result entity @s data.value int 1 run scoreboard players get $value_temp mem