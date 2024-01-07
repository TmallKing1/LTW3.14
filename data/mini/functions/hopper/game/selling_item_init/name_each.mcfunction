# 物品名称
data modify storage mini:hopper item_name_buff set from entity @s data.item_name
# 物品价值
data modify storage mini:hopper value_buff set from entity @s data.value
# 根据普通/双倍/五倍修改告示牌缓存
execute as @s[tag=!double,tag=!quintupling] run data modify block 0 1 0 front_text.messages[0] set value '[{"nbt":"item_name_buff","storage": "mini:hopper","color": "green"}," ",{"text": "价值: ","color": "gray"},{"nbt": "value_buff","storage": "mini:hopper","color": "white"}]'
execute as @s[tag=double] run data modify block 0 1 0 front_text.messages[0] set value '[{"nbt":"item_name_buff","storage": "mini:hopper","color": "gold"}," ",{"text": "价值: ","color": "gray"},{"nbt": "value_buff","storage": "mini:hopper","color": "green"}]'
execute as @s[tag=quintupling] run data modify block 0 1 0 front_text.messages[0] set value '[{"nbt":"item_name_buff","storage": "mini:hopper","color": "light_purple"}," ",{"text": "价值: ","color": "gray"},{"nbt": "value_buff","storage": "mini:hopper","color": "aqua"}]'
# 将标记的名称设置为告示牌缓存上已经解析完毕的JSON文本
data modify entity @s CustomName set from block 0 1 0 front_text.messages[0]
