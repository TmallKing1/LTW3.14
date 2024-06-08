execute if score $element_type mem matches 0 run data modify storage mini:element elements append value '{"text":"空","color":"#FFFFFF"}'
execute if score $element_type mem matches 1 run data modify storage mini:element elements append value '{"text":"风","color":"#76EEC6"}'
execute if score $element_type mem matches 2 run data modify storage mini:element elements append value '{"text":"岩","color":"#FFC125"}'
execute if score $element_type mem matches 3 run data modify storage mini:element elements append value '{"text":"雷","color":"#9400D3"}'
execute if score $element_type mem matches 4 run data modify storage mini:element elements append value '{"text":"水","color":"#436EEE"}'
execute if score $element_type mem matches 5 run data modify storage mini:element elements append value '{"text":"火","color":"#EE5C42"}'
execute if score $element_type mem matches 6 run data modify storage mini:element elements append value '{"text":"冰","color":"#97FFFF"}'

# 计数
execute if score $element_type mem matches 1 run scoreboard players add @s anemo_count 1
execute if score $element_type mem matches 2 run scoreboard players add @s geo_count 1
execute if score $element_type mem matches 3 run scoreboard players add @s electro_count 1
execute if score $element_type mem matches 4 run scoreboard players add @s hydro_count 1
execute if score $element_type mem matches 5 run scoreboard players add @s pyro_count 1
execute if score $element_type mem matches 6 run scoreboard players add @s cryo_count 1