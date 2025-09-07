tellraw @s ["",{"text": ">> ","color": "gold","bold": true},"你通过幻境抽取获得了 ",{"text": "五星 ","color": "gold"},{"text": "「青金石质盔甲纹饰」","color": "gold"},"，共使用 ",{"score": {"name": "@s","objective": "wish_five"},"color": "gold"}," 个魔法符咒！"]
tellraw @a[tag=!wishing] ["",{"text": ">> ","color": "gold","bold": true},{"selector":"@s","color": "gold"}," 通过幻境抽取获得了 ",{"text": "五星 ","color": "gold"},{"text": "「青金石质盔甲纹饰」","color": "gold"},"，共使用 ",{"score": {"name": "@s","objective": "wish_five"},"color": "gold"}," 个魔法符咒！"]
scoreboard players set $trim_material_num mem 6
function item:armor_trim/has_armor_trim_material
execute if score @s trim_boolean matches 0 run summon marker ~ ~ ~ {Tags:["wish_marker"],CustomName:'{"text": "[新]「青金石质盔甲纹饰」","color": "gold"}'}
execute unless score @s trim_boolean matches 0 run summon marker ~ ~ ~ {Tags:["wish_marker"],CustomName:'{"text": "「青金石质盔甲纹饰」","color": "gold"}'}
execute if score @s trim_boolean matches 1 run scoreboard players add @s primogem_temp 5
execute if score @s trim_boolean matches 0 run scoreboard players set $trim_material_num mem 6
execute if score @s trim_boolean matches 0 run function item:armor_trim/give_armor_trim_material
execute if score @s trim_boolean matches 0 at @s run function lib:sounds/theend
execute if score @s trim_boolean matches 1 at @s run function lib:sounds/levelup