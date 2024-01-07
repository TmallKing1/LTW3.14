#> item:armor_trim/set_armor_trim2
# @input TrimNum 盔甲纹饰锻造模板编号
# @input TrimMaterial 盔甲纹饰材料编号

# 构造对象
$data modify storage item:armor ArmorTrim.Trim set from storage item:armor Types[$(TrimNum)]
$data modify storage item:armor ArmorTrim.TrimMaterial set from storage item:armor Materials[$(TrimMaterial)]

# 进行下一步操作
function item:armor_trim/set_armor_trim3 with storage item:armor ArmorTrim