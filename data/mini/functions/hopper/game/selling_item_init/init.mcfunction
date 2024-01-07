kill @e[tag=sell_entry]

# 每种物品对应的标记
summon marker ~ ~ ~ {Tags: ["sell_entry"], data: {item: "minecraft:iron_ingot", item_name: "铁锭", value: 240, No: 0}}
summon marker ~ ~ ~ {Tags: ["sell_entry"], data: {item: "minecraft:gold_ingot", item_name: "金锭", value: 200, No: 1}}
summon marker ~ ~ ~ {Tags: ["sell_entry"], data: {item: "minecraft:copper_ingot", item_name: "铜锭", value: 150, No: 2}}
summon marker ~ ~ ~ {Tags: ["sell_entry"], data: {item: "minecraft:diamond", item_name: "钻石", value: 400, No: 3}}
summon marker ~ ~ ~ {Tags: ["sell_entry"], data: {item: "minecraft:emerald", item_name: "绿宝石", value: 440, No: 4}}
summon marker ~ ~ ~ {Tags: ["sell_entry"], data: {item: "minecraft:redstone", item_name: "红石", value: 70, No: 5}}
summon marker ~ ~ ~ {Tags: ["sell_entry"], data: {item: "minecraft:lapis_lazuli", item_name: "青金石", value: 30, No: 6}}
summon marker ~ ~ ~ {Tags: ["sell_entry"], data: {item: "minecraft:obsidian", item_name: "黑曜石", value: 640, No: 7}}
summon marker ~ ~ ~ {Tags: ["sell_entry"], data: {item: "minecraft:flint", item_name: "燧石", value: 360, No: 8}}
summon marker ~ ~ ~ {Tags: ["sell_entry"], data: {item: "minecraft:glass", item_name: "玻璃", value: 280, No: 9}}
summon marker ~ ~ ~ {Tags: ["sell_entry"], data: {item: "minecraft:smooth_stone", item_name: "平滑石头", value: 120, No: 10}}
summon marker ~ ~ ~ {Tags: ["sell_entry"], data: {item: "minecraft:netherite_scrap", item_name: "下界合金碎片", value: 520, No: 11}}
summon marker ~ ~ ~ {Tags: ["sell_entry"], data: {item: "minecraft:quartz", item_name: "下界石英", value: 160, No: 12}}

# 双倍价值
execute as @e[tag=sell_entry,sort=random,limit=2] run tag @s add double
scoreboard players set $multiply_value mem 2
execute as @e[tag=sell_entry,tag=double] run function mini:hopper/game/selling_item_init/multiply_value

# 五倍价值
execute as @e[tag=sell_entry,tag=!double,sort=random,limit=1] run tag @s add quintupling
scoreboard players set $multiply_value mem 5
execute as @e[tag=sell_entry,tag=quintupling] run function mini:hopper/game/selling_item_init/multiply_value

# 设定标记名称
execute as @e[tag=sell_entry] run function mini:hopper/game/selling_item_init/name_each

# 提示玩家（会移动到player_enter.mcfunction）
tellraw @a ["",{"text": ">> ","color": "aqua","bold": true},{"text": "本轮价值翻倍的物品：","color": "aqua"}]
tellraw @a ["",{"text": ">> ","color": "aqua","bold": true},{"text": "双倍 ","color": "aqua"},{"selector": "@e[tag=sell_entry,tag=double]","separator": ["",{"text": "\n>> ","color": "aqua","bold": true},{"text": "双倍 ","color": "aqua"}]}]
tellraw @a ["",{"text": ">> ","color": "aqua","bold": true},{"text": "五倍 ","color": "aqua"},{"selector": "@e[tag=sell_entry,tag=quintupling]"}]
tellraw @a ["",{"text": ">> ","color": "aqua","bold": true},{"text": "查看所有物品价值","color": "aqua","underlined": true,"hoverEvent": {"action": "show_text","contents": {"selector": "@e[tag=sell_entry]","separator": "\n"}}}]