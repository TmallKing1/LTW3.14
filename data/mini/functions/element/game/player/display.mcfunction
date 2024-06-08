# 找到自己的标记
function mini:element/game/marker/find

# 获取标记各元素
execute store result score $element_size mem run data get entity @e[type=marker,tag=found_marker,limit=1] data.elements
data modify storage mini:element elements set value []
function mini:element/game/player/display2

# 获取当前附着元素
execute as @e[type=marker,tag=found_marker,limit=1] run function mini:element/game/element/get_attach
execute if score $element_type mem matches 0 run data modify storage mini:element element_attach set value '{"text":"空","color":"#FFFFFF"}'
#execute if score $element_type mem matches 1 run data modify storage mini:element element_attach set value '{"text":"风","color":"#76EEC6"}'
#execute if score $element_type mem matches 2 run data modify storage mini:element element_attach set value '{"text":"岩","color":"#FFC125"}'
execute if score $element_type mem matches 3 run data modify storage mini:element element_attach set value '{"text":"雷","color":"#9400D3"}'
execute if score $element_type mem matches 4 run data modify storage mini:element element_attach set value '{"text":"水","color":"#436EEE"}'
execute if score $element_type mem matches 5 run data modify storage mini:element element_attach set value '{"text":"火","color":"#EE5C42"}'
execute if score $element_type mem matches 6 run data modify storage mini:element element_attach set value '{"text":"冰","color":"#97FFFF"}'

# 显示提示信息
function mini:element/game/player/burst_check
scoreboard players set $can_pick mem 0
execute if data entity @e[type=item,distance=..1,limit=1] Item.tag.element unless score $element_size mem matches 5.. run scoreboard players set $can_pick mem 1
execute if data entity @s SelectedItem.tag.game_item if score $burst_type mem matches 0 if score $can_pick mem matches 0 run title @s actionbar [{"text":"当前附着元素：","color": "gray"},{"nbt": "element_attach","storage": "mini:element","interpret": true}," 木剑储存元素: ",{"text": "[","color": "dark_gray"},{"nbt":"elements[0]","storage": "mini:element","interpret": true}," ",{"nbt":"elements[1]","storage": "mini:element","interpret": true}," ",{"nbt":"elements[2]","storage": "mini:element","interpret": true}," ",{"nbt":"elements[3]","storage": "mini:element","interpret": true}," ",{"nbt":"elements[4]","storage": "mini:element","interpret": true},{"text": "]","color": "dark_gray"}]
execute if data entity @s SelectedItem.tag.game_item if score $burst_type mem matches 0 if score $can_pick mem matches 1 run title @s actionbar [{"text":"当前附着元素：","color": "gray"},{"nbt": "element_attach","storage": "mini:element","interpret": true},{"text":" 潜行以收集元素 ","color": "light_purple"},{"text": "[","color": "dark_gray"},{"nbt":"elements[0]","storage": "mini:element","interpret": true}," ",{"nbt":"elements[1]","storage": "mini:element","interpret": true}," ",{"nbt":"elements[2]","storage": "mini:element","interpret": true}," ",{"nbt":"elements[3]","storage": "mini:element","interpret": true}," ",{"nbt":"elements[4]","storage": "mini:element","interpret": true},{"text": "]","color": "dark_gray"}]
execute if data entity @s SelectedItem.tag.game_item unless score $burst_type mem matches 0 run title @s actionbar [{"text":"当前附着元素：","color": "gray"},{"nbt": "element_attach","storage": "mini:element","interpret": true}," ",{"text": "按 ","color": "gold"},{"keybind": "key.swapOffhand","color": "gold"},{"text": " 施放元素爆发 ","color": "gold"},{"text": "[","color": "dark_gray"},{"nbt":"elements[0]","storage": "mini:element","interpret": true}," ",{"nbt":"elements[1]","storage": "mini:element","interpret": true}," ",{"nbt":"elements[2]","storage": "mini:element","interpret": true}," ",{"nbt":"elements[3]","storage": "mini:element","interpret": true}," ",{"nbt":"elements[4]","storage": "mini:element","interpret": true},{"text": "]","color": "dark_gray"}]
execute unless data entity @s SelectedItem.tag.game_item run title @s actionbar [{"text":"当前附着元素：","color": "gray"},{"nbt": "element_attach","storage": "mini:element","interpret": true}]

# 显示展示实体
execute if score $element_type mem matches 3 run summon text_display ~ ~2.5 ~ {text:'{"text":"雷","color":"#9400D3"}',Tags:["p"], billboard: "center", brightness: {block: 15, sky: 15}, background: 0, alignment:"center"}
execute if score $element_type mem matches 4 run summon text_display ~ ~2.5 ~ {text:'{"text":"水","color":"#436EEE"}',Tags:["p"], billboard: "center", brightness: {block: 15, sky: 15}, background: 0, alignment:"center"}
execute if score $element_type mem matches 5 run summon text_display ~ ~2.5 ~ {text:'{"text":"火","color":"#EE5C42"}',Tags:["p"], billboard: "center", brightness: {block: 15, sky: 15}, background: 0, alignment:"center"}
execute if score $element_type mem matches 6 run summon text_display ~ ~2.5 ~ {text:'{"text":"冰","color":"#97FFFF"}',Tags:["p"], billboard: "center", brightness: {block: 15, sky: 15}, background: 0, alignment:"center"}
scoreboard players set @e[tag=p] countdown_fast 1
tag @e remove p