# 给予魔法精华
summon item ~ ~ ~ {Item: {id: "ghast_tear", Count: 1b, tag: {display: {Name: '{"text":"魔法精华","color":"light_purple","italic": false}',Lore:['{"text": "每 64 个魔法精华自动转化为 1 个魔法符咒","color": "gray","italic": false}']}, stats_item: 1b, Enchantments: [{id: "infinity", lvl: 1}], HideFlags: 1}}, Tags: ["score_item", "new_stats"], PickupDelay: 0}
execute if score @s temp matches 1..64 store result entity @e[type=item,tag=score_item,limit=1] Item.Count byte 1 run scoreboard players get @s temp
execute if score @s temp matches 65.. run data modify entity @e[type=item,tag=score_item,limit=1] Item.Count set value 64b
data modify entity @e[type=item,tag=score_item,limit=1] Owner set from entity @s UUID
data modify entity @e[type=item,tag=score_item,limit=1] Thrower set from entity @s UUID
tag @e[type=item,tag=score_item] remove score_item
scoreboard players remove @s temp 64
execute if score @s temp matches 1.. run function item:shop/summon_essence


