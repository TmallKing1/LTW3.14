#> item:armor_trim/set_armor_trim3
# @input Trim 盔甲纹饰锻造模板命名空间 ID
# @input TrimMaterial 盔甲纹饰材料命名空间 ID

# 更改物品 NBT
$data modify block 0 0 0 RecordItem.tag.Trim.pattern set value "$(Trim)"
$data modify block 0 0 0 RecordItem.tag.Trim.material set value "$(TrimMaterial)"