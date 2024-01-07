execute store result score @s duckMotionX run random value -50..50
scoreboard players operation $duck_motion_X temp = @s duckMotionX
scoreboard players operation $duck_motion_X temp *= $duck_motion_X temp
scoreboard players operation $duck_motion_XX temp = #2500 mem
scoreboard players operation $duck_motion_XX temp -= $duck_motion_X temp
scoreboard players operation $square mem = $duck_motion_XX temp
function lib:sqrt
scoreboard players operation @s duckMotionZ = $square_root mem
execute store result score $random mem run random value 0..1
execute if score $random mem matches 1 run scoreboard players operation @s duckMotionZ *= #-1 mem