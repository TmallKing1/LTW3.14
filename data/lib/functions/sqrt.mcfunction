#> lib:sqrt
# @input score $square mem 平方
# @output score $square_root mem 开根结果

execute unless score $square mem matches ..-1 run scoreboard players operation $high mem = $square mem
execute unless score $square mem matches ..-1 if score $high mem matches 46341.. run scoreboard players set $high mem 46340
execute unless score $square mem matches ..-1 run scoreboard players set $low mem 1
execute unless score $square mem matches ..-1 store result score $square_root mem run function lib:sqrt_recu
execute if score $square mem matches ..-1 run scoreboard players set $square_root mem -1