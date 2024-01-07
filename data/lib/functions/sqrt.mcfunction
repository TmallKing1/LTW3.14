#> lib:sqrt
# @input score $square mem 平方
# @output score $square_root mem 开根结果

scoreboard players set $square_root mem 0
execute unless score $square mem matches ..-1 run function lib:sqrt_recu
execute unless score $square mem matches ..-1 unless score $square_root temp = $square mem run scoreboard players remove $square_root mem 1
execute if score $square mem matches ..-1 run scoreboard players set $square_root mem -1