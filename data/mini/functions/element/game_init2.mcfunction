
# 清理残余实体
function mini:main/kill_entity

# 清理标记
kill @e[type=marker]
kill @e[type=text_display]

# 生成元素标记
## 随机元素
scoreboard players set $element_type mem 0
execute positioned 1021.99 67.50 15010.58 run function mini:element/game/marker/summon_element
execute positioned 1016.85 66.00 15035.18 run function mini:element/game/marker/summon_element
execute positioned 1019.51 71.00 15022.49 run function mini:element/game/marker/summon_element
execute positioned 1024.13 66.00 15028.36 run function mini:element/game/marker/summon_element
execute positioned 1033.58 72.00 15025.84 run function mini:element/game/marker/summon_element
execute positioned 1037.46 74.50 15028.36 run function mini:element/game/marker/summon_element
execute positioned 1036.23 80.00 15025.27 run function mini:element/game/marker/summon_element
execute positioned 1020.72 78.00 15028.25 run function mini:element/game/marker/summon_element
execute positioned 1008.57 78.00 15022.73 run function mini:element/game/marker/summon_element
execute positioned 1006.62 74.00 15022.13 run function mini:element/game/marker/summon_element
execute positioned 1010.71 71.00 15030.47 run function mini:element/game/marker/summon_element
execute positioned 1027.27 71.00 15038.41 run function mini:element/game/marker/summon_element
execute positioned 1040.38 67.00 15028.62 run function mini:element/game/marker/summon_element
execute positioned 1037.42 70.00 15022.44 run function mini:element/game/marker/summon_element
execute positioned 1032.01 67.00 15015.32 run function mini:element/game/marker/summon_element
execute positioned 1029.39 77.00 15014.03 run function mini:element/game/marker/summon_element
execute positioned 1011.67 66.00 15023.46 run function mini:element/game/marker/summon_element
## 风元素
scoreboard players set $element_type mem 1
execute positioned 1015.88 71.00 15031.17 run function mini:element/game/marker/summon_element
execute positioned 1007.30 74.00 15018.62 run function mini:element/game/marker/summon_element
execute positioned 1010.97 70.00 15016.99 run function mini:element/game/marker/summon_element
execute positioned 1010.82 66.00 15010.47 run function mini:element/game/marker/summon_element
execute positioned 1029.04 67.00 15037.27 run function mini:element/game/marker/summon_element
execute positioned 1042.07 66.00 15033.40 run function mini:element/game/marker/summon_element
## 岩元素
scoreboard players set $element_type mem 2
execute positioned 1038.25 66.00 15020.44 run function mini:element/game/marker/summon_element
execute positioned 1042.35 66.00 15023.23 run function mini:element/game/marker/summon_element
execute positioned 1031.57 77.00 15015.01 run function mini:element/game/marker/summon_element
execute positioned 1034.69 77.00 15017.28 run function mini:element/game/marker/summon_element
## 雷元素
scoreboard players set $element_type mem 3
execute positioned 1036.38 73.00 15040.09 run function mini:element/game/marker/summon_element
execute positioned 1032.80 73.00 15042.17 run function mini:element/game/marker/summon_element
execute positioned 1018.18 78.00 15016.81 run function mini:element/game/marker/summon_element
execute positioned 1020.86 78.00 15018.41 run function mini:element/game/marker/summon_element
## 水元素
scoreboard players set $element_type mem 4
execute positioned 1034.80 66.00 15034.54 run function mini:element/game/marker/summon_element
execute positioned 1030.45 66.00 15032.28 run function mini:element/game/marker/summon_element
execute positioned 1036.65 77.00 15018.52 run function mini:element/game/marker/summon_element
execute positioned 1036.11 77.00 15023.38 run function mini:element/game/marker/summon_element
## 火元素
scoreboard players set $element_type mem 5
execute positioned 1012.12 79.00 15020.99 run function mini:element/game/marker/summon_element
execute positioned 1022.56 70.00 15039.45 run function mini:element/game/marker/summon_element
execute positioned 1011.82 66.00 15011.08 run function mini:element/game/marker/summon_element
execute positioned 1016.44 66.00 15012.30 run function mini:element/game/marker/summon_element
## 冰元素
scoreboard players set $element_type mem 6
execute positioned 1031.47 66.00 15021.34 run function mini:element/game/marker/summon_element
execute positioned 1029.94 66.00 15025.35 run function mini:element/game/marker/summon_element
execute positioned 1028.49 78.00 15025.78 run function mini:element/game/marker/summon_element
execute positioned 1032.65 78.00 15027.72 run function mini:element/game/marker/summon_element

# 生成传送点标记
execute positioned 1011.98 66.00 15015.07 rotated -121.44 4.75 run function mini:element/game/marker/summon_teleport_point
execute positioned 1015.23 66.00 15035.00 rotated -101.42 1.07 run function mini:element/game/marker/summon_teleport_point
execute positioned 1027.75 71.00 15027.71 rotated -101.42 -4.24 run function mini:element/game/marker/summon_teleport_point
execute positioned 1035.69 73.00 15037.91 rotated -173.46 0.66 run function mini:element/game/marker/summon_teleport_point
execute positioned 1031.71 77.00 15016.62 rotated -65.06 11.97 run function mini:element/game/marker/summon_teleport_point
execute positioned 1006.83 79.00 15021.34 rotated -66.28 11.01 run function mini:element/game/marker/summon_teleport_point
execute positioned 1028.09 66.00 15018.45 rotated -38.91 5.84 run function mini:element/game/marker/summon_teleport_point
execute positioned 1043.27 66.00 15030.69 rotated 126.96 -11.60 run function mini:element/game/marker/summon_teleport_point