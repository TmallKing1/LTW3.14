#> item:armor_trim/enderchest/displays/type12/fill
# @input Index
$data modify storage item:armor TrimTemplateEdit.Type set from storage item:armor Types[$(Index)]
function item:armor_trim/enderchest/displays/type12/fill1 with storage item:armor TrimTemplateEdit
scoreboard players add $trim_template_index mem 1
execute store result storage item:armor TrimTemplateEdit.Index int 1 run scoreboard players get $trim_template_index mem
execute unless score $trim_template_index mem matches 16.. run function item:armor_trim/enderchest/displays/type12/fill with storage item:armor TrimTemplateEdit