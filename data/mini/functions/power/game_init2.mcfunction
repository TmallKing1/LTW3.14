
# 清理残余实体
function mini:main/kill_entity

# 清理游戏独占实体
kill @e[tag=power_entity]

# 定义玩家生成点
summon marker 1043.47 -53.00 19055.46 {Tags:["power_entity", "spawn_point"], Rotation:[134.85f, 0f]}
summon marker 1007.97 -53.00 19052.82 {Tags:["power_entity", "spawn_point"], Rotation:[-139.95f, 0f]}
summon marker 1006.29 -53.00 19045.36 {Tags:["power_entity", "spawn_point"], Rotation:[-130.95f, 0f]}
summon marker 1003.25 -53.00 19008.20 {Tags:["power_entity", "spawn_point"], Rotation:[-48.75f, 0f]}
summon marker 1010.50 -53.00 19002.63 {Tags:["power_entity", "spawn_point"], Rotation:[-32.70f, 0f]}
summon marker 1045.32 -53.00 19006.47 {Tags:["power_entity", "spawn_point"], Rotation:[36.45f, 0f]}
summon marker 1050.18 -53.00 19015.34 {Tags:["power_entity", "spawn_point"], Rotation:[61.05f, 0f]}
summon marker 1049.51 -53.00 19048.19 {Tags:["power_entity", "spawn_point"], Rotation:[134.85f, 0f]}

# 生成攻击加成物品的点
#summon marker 1028.37 -56.00 19028.51 {Tags:["power_entity", "power_item_marker", "atk_boost"]}
#summon marker 1030.26 -53.00 19007.01 {Tags:["power_entity", "power_item_marker", "atk_boost"]}
#summon marker 1003.86 -53.00 19026.94 {Tags:["power_entity", "power_item_marker", "atk_boost"]}
#summon marker 1025.97 -53.00 19052.51 {Tags:["power_entity", "power_item_marker", "atk_boost"]}
#summon marker 1050.34 -53.00 19030.51 {Tags:["power_entity", "power_item_marker", "atk_boost"]}

# 生成能量物品的点
#summon marker 1036.78 -55.00 19010.68 {Tags:["power_entity", "power_item_marker", "power_add"]}
#summon marker 1047.22 -55.00 19023.78 {Tags:["power_entity", "power_item_marker", "power_add"]}
#summon marker 1045.52 -55.00 19035.83 {Tags:["power_entity", "power_item_marker", "power_add"]}
#summon marker 1035.23 -55.00 19048.59 {Tags:["power_entity", "power_item_marker", "power_add"]}
#summon marker 1019.50 -55.00 19047.47 {Tags:["power_entity", "power_item_marker", "power_add"]}
#summon marker 1008.89 -55.00 19035.47 {Tags:["power_entity", "power_item_marker", "power_add"]}
#summon marker 1007.90 -55.00 19018.88 {Tags:["power_entity", "power_item_marker", "power_add"]}
#summon marker 1021.58 -55.00 19010.26 {Tags:["power_entity", "power_item_marker", "power_add"]}
#summon marker 1020.01 -51.00 19022.70 {Tags:["power_entity", "power_item_marker", "power_add", "nospread"]}
#summon marker 1034.75 -53.00 19023.35 {Tags:["power_entity", "power_item_marker", "power_add", "nospread"]}
#summon marker 1035.40 -53.00 19038.59 {Tags:["power_entity", "power_item_marker", "power_add", "nospread"]}
#summon marker 1020.02 -51.00 19034.82 {Tags:["power_entity", "power_item_marker", "power_add", "nospread"]}