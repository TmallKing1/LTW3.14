# 扣分
scoreboard players remove $trim_code mem 1

# 锻造模板
scoreboard players operation $trim_num mem = $trim_code mem
scoreboard players operation $trim_num mem %= #16 mem

# 材料
scoreboard players operation $trim_material_num mem = $trim_code mem
scoreboard players operation $trim_material_num mem /= #16 mem

# 构造对象
execute store result storage item:armor ArmorTrimNum.TrimNum int 1 run scoreboard players get $trim_num mem
execute store result storage item:armor ArmorTrimNum.TrimMaterial int 1 run scoreboard players get $trim_material_num mem

# 进行余下操作
function item:armor_trim/set_armor_trim2 with storage item:armor ArmorTrimNum