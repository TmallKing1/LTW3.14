#> item:armor_trim/has_armor_trim
# 判断执行者是否拥有对应的盔甲纹饰
# @input score $trim_num mem 盔甲纹饰编号
# @output score @s trim_boolean 是否拥有盔甲纹饰（1为是，0为否）

# 计算幂
scoreboard players set $base mem 2
scoreboard players operation $exponent mem = $trim_num mem
function lib:pow

# 除
scoreboard players operation @s trim_boolean = @s trim_has
scoreboard players operation @s trim_boolean /= $power mem

# 模 2
scoreboard players operation @s trim_boolean %= #2 mem
