#> lib:pow
# @input score $base mem 底数
# @input score $exponent mem 指数
# @output score $power mem 幂

scoreboard players set $power mem 1
execute unless score $exponent mem matches ..0 run function lib:pow_recu