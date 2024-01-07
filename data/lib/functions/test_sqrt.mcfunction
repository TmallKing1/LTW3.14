scoreboard players add $square_root mem 1
scoreboard players operation $square_root temp = $square_root mem
scoreboard players operation $square_root temp *= $square_root temp
execute unless score $square_root temp >= $square mem run function lib:test_sqrt