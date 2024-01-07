#> item:armor_trim/enderchest/displays/type12/fill1
# @input Index
# @input Type
$item replace entity @s enderchest.$(Index) with $(Type)_block{armor_trim_set: 1b, display: {Name: '{"translate":"trim_material.minecraft.$(Type)"}'}}
$scoreboard players set $trim_material_num mem $(Index)
function item:armor_trim/has_armor_trim_material
$item modify entity @s enderchest.$(Index) item:armor_trim/type13