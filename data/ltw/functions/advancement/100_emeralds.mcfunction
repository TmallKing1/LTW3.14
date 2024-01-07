scoreboard players set $trim_material_num mem 3
function item:armor_trim/give_armor_trim_material
tellraw @s ["",{"text": ">> ","color": "green"},"你获得了 ",{"translate": "trim_material.minecraft.emerald","color": "green"}," 盔甲纹饰材质！"]