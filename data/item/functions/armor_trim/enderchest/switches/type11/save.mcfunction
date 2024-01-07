scoreboard players set @s trim_boolean 1
execute unless score @s trim_edit matches 0.. run scoreboard players set @s trim_boolean 0
execute unless score @s trim_editmat matches 0.. run scoreboard players set @s trim_boolean 0
execute if score @s trim_boolean matches 0 run function lib:sounds/error
execute if score @s trim_boolean matches 0 run tellraw @s ["",{"text": ">> ","color": "red","bold": true},{"text": "请先指定盔甲纹饰锻造模板和纹饰材料再进行保存！","color": "red"}]
execute if score @s trim_boolean matches 0 run return -1
$data modify storage item:armor ArmorMaterial set from storage item:armor ArmorMaterials[$(SaveMaterialType)]
function item:armor_trim/save_armor_trim with storage item:armor
function lib:sounds/hit
tellraw @s ["",{"text": ">> ","color": "green","bold": true},{"text": "保存成功！","color": "green"}]