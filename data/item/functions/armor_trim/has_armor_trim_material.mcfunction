#> item:armor_trim/has_armor_trim_material
# 判断执行者是否拥有对应的盔甲纹饰材料
# @input score $trim_material_num mem 盔甲纹饰材料编号
# @output score @s trim_boolean 是否拥有盔甲纹饰材料（1为是，0为否）

# 计算幂
scoreboard players set $base mem 2
scoreboard players operation $exponent mem = $trim_material_num mem
function lib:pow

# 除
scoreboard players operation @s trim_boolean = @s trim_hasmat
scoreboard players operation @s trim_boolean /= $power mem

# 模 2
scoreboard players operation @s trim_boolean %= #2 mem
