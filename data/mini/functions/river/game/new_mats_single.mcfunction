# 根据实体类型生成物资
execute if entity @s[tag=basic,tag=!mats_exist] run summon item_display ~ ~0.5 ~ {item: {Count: 1b, id: "minecraft:chest"}, transformation: {right_rotation: {angle: 2.355f, axis: [0, 1, 0]}, left_rotation: {angle: 2.355f, axis: [0, 1, 0]}, scale: [1, 1, 1], translation: [0, 0, 0]}, Glowing: 1b, Tags: ["basic_mats", "river_entity"]}
execute if entity @s[tag=speci,tag=!mats_exist] run summon item_display ~ ~0.5 ~ {item: {Count: 1b, id: "minecraft:ender_chest"}, transformation: {right_rotation: {angle: 2.355f, axis: [0, 1, 0]}, left_rotation: {angle: 2.355f, axis: [0, 1, 0]}, scale: [1, 1, 1], translation: [0, 0, 0]}, Glowing: 1b, Tags: ["speci_mats", "river_entity"]}

# 更改交互实体挥手属性
data modify entity @s response set value 1b

# 添加物资存在的标签
tag @s add mats_exist

# 红色高亮显示特殊物资（奖励物品）
team join red @e[tag=speci_mats]