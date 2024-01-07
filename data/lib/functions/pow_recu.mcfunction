scoreboard players operation $power mem *= $base mem
scoreboard players remove $exponent mem 1
execute unless score $exponent mem matches ..0 run function lib:pow_recu