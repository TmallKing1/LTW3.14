#> item:armor_trim/give_armor_trim_material
# 若玩家没有盔甲纹饰材料，则给予盔甲纹饰材料
# @input score $trim_material_num mem 盔甲纹饰材料编号

# 判断是否有盔甲纹饰
function item:armor_trim/has_armor_trim_material

# 若无，则给予
execute if score @s trim_boolean matches 0 run scoreboard players operation @s trim_hasmat += $power mem