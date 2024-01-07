execute store result score @s duckMotionX run random value -30..30
scoreboard players operation $duck_motion_X temp = @s duckMotionX
scoreboard players operation $duck_motion_X temp *= $duck_motion_X temp
scoreboard players operation $duck_motion_XX temp = #2500 mem
scoreboard players operation $duck_motion_XX temp -= $duck_motion_X temp
scoreboard players operation $square mem = $duck_motion_XX temp
function lib:sqrt
scoreboard players operation @s duckMotionZ = $square_root mem
scoreboard players operation @s duckMotionZ *= #-1 mem