# 标签
tag @s add player_storage

# 相关值初始化
data modify entity @s data set value {elements: [], element_attach: 0, last_damage: [],gandian_source: [],kill_streak: 0}
data modify entity @s data.player set from entity @p[tag=smmk] UUID

# 删除玩家的标签
tag @a remove smmk

# 元素：1-风 2-岩 3-雷 4-水 5-火 6-冰