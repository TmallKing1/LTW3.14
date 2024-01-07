execute store result score @s duckMotionZ run random value -30..30
scoreboard players operation $duck_motion_Z temp = @s duckMotionZ
scoreboard players operation $duck_motion_Z temp *= $duck_motion_Z temp
scoreboard players operation $duck_motion_ZZ temp = #2500 mem
scoreboard players operation $duck_motion_ZZ temp -= $duck_motion_Z temp
scoreboard players operation $square mem = $duck_motion_ZZ temp
function lib:sqrt
scoreboard players operation @s duckMotionX = $square_root mem
scoreboard players operation @s duckMotionX *= #-1 mem