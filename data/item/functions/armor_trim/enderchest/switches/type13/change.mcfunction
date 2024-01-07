$scoreboard players set $trim_material_num mem $(ChangeType)
function item:armor_trim/has_armor_trim_material
execute unless score @s trim_boolean matches 1 run function lib:sounds/error
execute unless score @s trim_boolean matches 1 run tellraw @s ["",{"text": ">> ","color": "red","bold": true},{"text": "你目前还没有这个纹饰材料……","color": "red"}]
execute unless score @s trim_boolean matches 1 run return -1
$scoreboard players set @s trim_editmat $(ChangeType)
$data modify storage item:armor TrimMaterialName set from storage item:armor Materials[$(ChangeType)]
function item:armor_trim/enderchest/switches/type13/tellraw with storage item:armor
function lib:sounds/hit