# 依次填入每个锻造模板
execute store result storage item:armor TrimMaterialEdit.Index int 1 run scoreboard players set $trim_material_index mem 0
function item:armor_trim/enderchest/displays/type13/fill with storage item:armor TrimMaterialEdit

# 返回按钮
item replace entity @s enderchest.26 with command_block{armor_trim_set: 1b,display:{Name:'{"text": "返回","color": "red","italic": false}'}}

# 空位
item replace entity @s enderchest.10 with light_gray_stained_glass_pane{armor_trim_set: 1b, display: {Name: '""'}}
item replace entity @s enderchest.11 with light_gray_stained_glass_pane{armor_trim_set: 1b, display: {Name: '""'}}
item replace entity @s enderchest.12 with light_gray_stained_glass_pane{armor_trim_set: 1b, display: {Name: '""'}}
item replace entity @s enderchest.13 with light_gray_stained_glass_pane{armor_trim_set: 1b, display: {Name: '""'}}
item replace entity @s enderchest.14 with light_gray_stained_glass_pane{armor_trim_set: 1b, display: {Name: '""'}}
item replace entity @s enderchest.15 with light_gray_stained_glass_pane{armor_trim_set: 1b, display: {Name: '""'}}
item replace entity @s enderchest.16 with light_gray_stained_glass_pane{armor_trim_set: 1b, display: {Name: '""'}}
item replace entity @s enderchest.17 with light_gray_stained_glass_pane{armor_trim_set: 1b, display: {Name: '""'}}
item replace entity @s enderchest.18 with light_gray_stained_glass_pane{armor_trim_set: 1b, display: {Name: '""'}}
item replace entity @s enderchest.19 with light_gray_stained_glass_pane{armor_trim_set: 1b, display: {Name: '""'}}
item replace entity @s enderchest.20 with light_gray_stained_glass_pane{armor_trim_set: 1b, display: {Name: '""'}}
item replace entity @s enderchest.21 with light_gray_stained_glass_pane{armor_trim_set: 1b, display: {Name: '""'}}
item replace entity @s enderchest.22 with light_gray_stained_glass_pane{armor_trim_set: 1b, display: {Name: '""'}}
item replace entity @s enderchest.23 with light_gray_stained_glass_pane{armor_trim_set: 1b, display: {Name: '""'}}
item replace entity @s enderchest.24 with light_gray_stained_glass_pane{armor_trim_set: 1b, display: {Name: '""'}}
item replace entity @s enderchest.25 with light_gray_stained_glass_pane{armor_trim_set: 1b, display: {Name: '""'}}