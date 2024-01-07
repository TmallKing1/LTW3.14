#> item:armor_trim/enderchest/displays/type13/fill
# @input Index
$data modify storage item:armor TrimMaterialEdit.Type set from storage item:armor Materials[$(Index)]
function item:armor_trim/enderchest/displays/type13/fill1 with storage item:armor TrimMaterialEdit
scoreboard players add $trim_material_index mem 1
execute store result storage item:armor TrimMaterialEdit.Index int 1 run scoreboard players get $trim_material_index mem
execute unless score $trim_material_index mem matches 10.. run function item:armor_trim/enderchest/displays/type13/fill with storage item:armor TrimMaterialEdit