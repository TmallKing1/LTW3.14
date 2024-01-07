# 显示末影箱物品

# 更改锻造模板
execute store result storage item:armor TrimEdit.Template int 1 run scoreboard players get @s trim_edit
execute if score @s trim_edit matches 0.. run data modify storage lib:string Strings.A set value '{"translate":"trim_pattern.minecraft.'
execute if score @s trim_edit matches 0.. run function item:armor_trim/enderchest/displays/type11/change1 with storage item:armor TrimEdit
execute if score @s trim_edit matches 0.. run data modify storage lib:string Strings.C set value '"}'
execute if score @s trim_edit matches 0.. run function lib:string/connect3 with storage lib:string Strings
item replace entity @s enderchest.3 with smithing_table{armor_trim_set: 1b}
item modify entity @s enderchest.3 item:armor_trim/type11/template

# 更改材质
execute store result storage item:armor TrimEdit.Material int 1 run scoreboard players get @s trim_editmat
execute if score @s trim_editmat matches 0.. run data modify storage lib:string Strings.A set value '{"translate":"trim_material.minecraft.'
execute if score @s trim_editmat matches 0.. run function item:armor_trim/enderchest/displays/type11/change2 with storage item:armor TrimEdit
execute if score @s trim_editmat matches 0.. run data modify storage lib:string Strings.C set value '"}'
execute if score @s trim_editmat matches 0.. run function lib:string/connect3 with storage lib:string Strings
item replace entity @s enderchest.5 with shulker_box{armor_trim_set: 1b}
item modify entity @s enderchest.5 item:armor_trim/type11/material

# 各个盔甲材料的配置
item replace entity @s enderchest.19 with turtle_helmet{armor_trim_set: 1b, display:{Name: '{"text": "将纹饰更改应用到海龟壳","color": "green","italic": false}'}}
item replace entity @s enderchest.20 with leather_helmet{armor_trim_set: 1b, display:{Name: '{"text": "将纹饰更改应用到所有皮革盔甲","color": "gold","italic": false}'}}
item replace entity @s enderchest.21 with chainmail_helmet{armor_trim_set: 1b, display:{Name: '{"text": "将纹饰更改应用到所有锁链盔甲","color": "gray","italic": false}'}}
item replace entity @s enderchest.22 with iron_helmet{armor_trim_set: 1b, display:{Name: '{"text": "将纹饰更改应用到所有铁盔甲","color": "white","italic": false}'}}
item replace entity @s enderchest.23 with golden_helmet{armor_trim_set: 1b, display:{Name: '{"text": "将纹饰更改应用到所有金盔甲","color": "yellow","italic": false}'}}
item replace entity @s enderchest.24 with diamond_helmet{armor_trim_set: 1b, display:{Name: '{"text": "将纹饰更改应用到所有钻石盔甲","color": "aqua","italic": false}'}}
item replace entity @s enderchest.25 with netherite_helmet{armor_trim_set: 1b, display:{Name: '{"text": "将纹饰更改应用到所有下界合金盔甲","color": "dark_gray","italic": false}'}}

# 空位
item replace entity @s enderchest.0 with light_gray_stained_glass_pane{armor_trim_set: 1b, display: {Name: '""'}}
item replace entity @s enderchest.1 with light_gray_stained_glass_pane{armor_trim_set: 1b, display: {Name: '""'}}
item replace entity @s enderchest.2 with light_gray_stained_glass_pane{armor_trim_set: 1b, display: {Name: '""'}}
item replace entity @s enderchest.4 with light_gray_stained_glass_pane{armor_trim_set: 1b, display: {Name: '""'}}
item replace entity @s enderchest.6 with light_gray_stained_glass_pane{armor_trim_set: 1b, display: {Name: '""'}}
item replace entity @s enderchest.7 with light_gray_stained_glass_pane{armor_trim_set: 1b, display: {Name: '""'}}
item replace entity @s enderchest.8 with light_gray_stained_glass_pane{armor_trim_set: 1b, display: {Name: '""'}}
item replace entity @s enderchest.9 with light_gray_stained_glass_pane{armor_trim_set: 1b, display: {Name: '""'}}
item replace entity @s enderchest.10 with light_gray_stained_glass_pane{armor_trim_set: 1b, display: {Name: '""'}}
item replace entity @s enderchest.11 with light_gray_stained_glass_pane{armor_trim_set: 1b, display: {Name: '""'}}
item replace entity @s enderchest.12 with light_gray_stained_glass_pane{armor_trim_set: 1b, display: {Name: '""'}}
item replace entity @s enderchest.13 with light_gray_stained_glass_pane{armor_trim_set: 1b, display: {Name: '""'}}
item replace entity @s enderchest.14 with light_gray_stained_glass_pane{armor_trim_set: 1b, display: {Name: '""'}}
item replace entity @s enderchest.15 with light_gray_stained_glass_pane{armor_trim_set: 1b, display: {Name: '""'}}
item replace entity @s enderchest.16 with light_gray_stained_glass_pane{armor_trim_set: 1b, display: {Name: '""'}}
item replace entity @s enderchest.17 with light_gray_stained_glass_pane{armor_trim_set: 1b, display: {Name: '""'}}
item replace entity @s enderchest.18 with light_gray_stained_glass_pane{armor_trim_set: 1b, display: {Name: '""'}}
item replace entity @s enderchest.26 with light_gray_stained_glass_pane{armor_trim_set: 1b, display: {Name: '""'}}