# 给予纠缠之缘
summon item ~ ~ ~ {Item: {id: "pink_dye", Count: 1b, tag: {display: {Name: '{"translate":"ltw.item.stat.intertwined_fate","fallback":"纠缠之缘","color":"light_purple","italic": false}'}, stats_item: 1b, Enchantments: [{id: "infinity", lvl: 1}], HideFlags: 1, CustomModelData: 14320001}}, Tags: ["score_item", "new_stats"], PickupDelay: 0}
execute if score @s temp matches 1..64 store result entity @e[type=item,tag=score_item,limit=1] Item.Count byte 1 run scoreboard players get @s temp
execute if score @s temp matches 65.. run data modify entity @e[type=item,tag=score_item,limit=1] Item.Count set value 64b
data modify entity @e[type=item,tag=score_item,limit=1] Owner set from entity @s UUID
data modify entity @e[type=item,tag=score_item,limit=1] Thrower set from entity @s UUID
tag @e[type=item,tag=score_item] remove score_item
scoreboard players remove @s temp 64
execute if score @s temp matches 1.. run function item:shop/summon_intertwined_fate


