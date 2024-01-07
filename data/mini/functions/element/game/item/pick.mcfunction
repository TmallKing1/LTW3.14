# 如果物品是随机元素，则需额外处理。如果不是则直接赋值
execute store result score $random mem run random value 1..6
execute store result score $element_type mem run data get entity @s Item.tag.element
execute if score $element_type mem matches 0 run scoreboard players operation $element_type mem = $random mem

# 获取玩家的标记
execute as @p[tag=qualified2] run function mini:element/game/marker/find

# 添加元素
execute store result storage mini:element element_buffer int 1 run scoreboard players get $element_type mem
data modify entity @e[tag=found_marker,limit=1] data.elements prepend from storage mini:element element_buffer

# 显示提示
#execute if score $element_type mem matches 1 run data modify storage mini:element element_buffer set value '{"text":"风元素","color":"#76EEC6"}'
#execute if score $element_type mem matches 2 run data modify storage mini:element element_buffer set value '{"text":"岩元素","color":"#FFC125"}'
#execute if score $element_type mem matches 3 run data modify storage mini:element element_buffer set value '{"text":"雷元素","color":"#9400D3"}'
#execute if score $element_type mem matches 4 run data modify storage mini:element element_buffer set value '{"text":"水元素","color":"#436EEE"}'
#execute if score $element_type mem matches 5 run data modify storage mini:element element_buffer set value '{"text":"火元素","color":"#EE5C42"}'
#execute if score $element_type mem matches 6 run data modify storage mini:element element_buffer set value '{"text":"冰元素","color":"#97FFFF"}'
#tellraw @p[tag=qualified2] ["",{"text": ">> ","color": "aqua","bold": true},"你获得了一份 ",{"nbt":"element_buffer","storage": "mini:element","interpret": true}]
execute as @p[tag=qualified2] run function lib:sounds/hit

# 清除 Tag
tag @a remove qualified2

# 杀死物品
kill