scoreboard players operation $even mem = $high mem
scoreboard players operation $even mem += $low mem
scoreboard players operation $even mem /= #2 mem
scoreboard players operation $square_root temp = $even mem
scoreboard players operation $square_root temp *= $square_root temp
execute if score $square_root temp = $square mem run return run scoreboard players get $even mem
execute if score $square_root temp > $square mem run scoreboard players operation $high mem = $even mem
execute if score $low mem = $even mem run return run scoreboard players get $even mem
execute if score $square_root temp < $square mem run scoreboard players operation $low mem = $even mem
return run function lib:sqrt_recu
