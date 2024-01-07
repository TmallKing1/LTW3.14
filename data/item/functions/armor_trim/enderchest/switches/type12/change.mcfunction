$scoreboard players set $trim_num mem $(ChangeType)
function item:armor_trim/has_armor_trim
execute unless score @s trim_boolean matches 1 run function lib:sounds/error
execute unless score @s trim_boolean matches 1 run tellraw @s ["",{"text": ">> ","color": "red","bold": true},{"text": "你目前还没有这个锻造模板……","color": "red"}]
execute unless score @s trim_boolean matches 1 run return -1
$scoreboard players set @s trim_edit $(ChangeType)
$data modify storage item:armor TrimPatternName set from storage item:armor Types[$(ChangeType)]
function item:armor_trim/enderchest/switches/type12/tellraw with storage item:armor
function lib:sounds/hit