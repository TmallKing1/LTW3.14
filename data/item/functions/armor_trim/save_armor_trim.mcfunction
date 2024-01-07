#> item:armor_trim/save_armor_trim
# 保存玩家的盔甲纹饰设置
# @input ArmorMaterial 盔甲材料类型

scoreboard players operation $trim_code mem = @s trim_editmat
scoreboard players operation $trim_code mem *= #16 mem
scoreboard players operation $trim_code mem += @s trim_edit
scoreboard players add $trim_code mem 1

$scoreboard players operation @s trim_$(ArmorMaterial) = $trim_code mem