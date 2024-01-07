data modify entity @s NoGravity set value 1b

# 随机动量 X
execute store result score $motion mem run random value 10..20
execute store result score $random mem run random value 0..1
execute if score $random mem matches 1 run scoreboard players operation $motion mem *= #-1 mem
execute store result entity @s Motion[0] double 0.1 run scoreboard players get $motion mem

# 随机动量 Y
execute store result score $motion mem run random value 10..20
execute store result score $random mem run random value 0..1
execute if score $random mem matches 1 run scoreboard players operation $motion mem *= #-1 mem
execute store result entity @s Motion[2] double 0.1 run scoreboard players get $motion mem