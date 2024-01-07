#> item:armor_trim/enderchest/displays/type12/fill1
# @input Index
# @input Type
$item replace entity @s enderchest.$(Index) with $(Type)_armor_trim_smithing_template{armor_trim_set: 1b}
$scoreboard players set $trim_num mem $(Index)
function item:armor_trim/has_armor_trim
$item modify entity @s enderchest.$(Index) item:armor_trim/type12