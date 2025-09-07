# 检测附近的世界模式格子
execute unless entity @e[tag=world_entity,type=marker,distance=..2] run tag @s remove world_conflict
execute unless entity @e[tag=world_entity,type=marker,distance=..2] run return fail

# 标记玩家自己
tag @s add world_conflict
tag @e[tag=world_entity,type=marker,distance=..2,limit=1,sort=nearest] add marked_stage

# 构造 Actionbar 的三个部件：格子类型、格子步数、格子奖励

# 将玩家的当前索引与格子索引作差
scoreboard players operation $temp_index mem = @s world_stage
scoreboard players operation $temp_index mem -= @e[tag=marked_stage,limit=1] stage_index
## 格子类型
execute if score $temp_index mem matches -4..0 if score @e[tag=marked_stage,limit=1] stage_type matches 0 run data modify storage ltw:world Actionbar.A set value '{"text":"","color":"white"}'
execute if score $temp_index mem matches -4..0 if score @e[tag=marked_stage,limit=1] stage_type matches 1 run data modify storage ltw:world Actionbar.A set value '{"text":"双倍格 ","color":"gold"}'
execute if score $temp_index mem matches -4..0 if score @e[tag=marked_stage,limit=1] stage_type matches 2 run data modify storage ltw:world Actionbar.A set value '{"text":"随机格 ","color":"dark_purple"}'
execute if score $temp_index mem matches -4..0 if score @e[tag=marked_stage,limit=1] stage_type matches 3 run data modify storage ltw:world Actionbar.A set value '{"text":"+2 符咒 ","color":"green"}'
execute if score $temp_index mem matches -4..0 if score @e[tag=marked_stage,limit=1] stage_type matches -1 run data modify storage ltw:world Actionbar.A set value '{"text":"限制 [改版模式] ","color":"red"}'
execute if score $temp_index mem matches -4..0 if score @e[tag=marked_stage,limit=1] stage_type matches -2 run data modify storage ltw:world Actionbar.A set value '{"text":"限制 [经典模式] ","color":"red"}'
execute if score $temp_index mem matches -4..0 if score @e[tag=marked_stage,limit=1] stage_type matches -3 run data modify storage ltw:world Actionbar.A set value '{"text":"限制 [逆转模式] ","color":"red"}'
execute if score $temp_index mem matches 1.. run data modify storage ltw:world Actionbar.A set value '{"text":"","color":"white"}'
execute if score $temp_index mem matches ..-5 run data modify storage ltw:world Actionbar.A set value '{"text":"前面的区域以后再来探索吧？","color":"red"}'

## 格子步数
execute if score $temp_index mem matches ..-5 run data modify storage ltw:world Actionbar.B set value '{"text":"","color":"white"}'
execute if score $temp_index mem matches -4..-1 run data modify block 0 1 0 front_text.messages[0] set value '[{"score":{"name":"@e[tag=marked_stage,limit=1]","objective":"stage_step"},"color":"yellow"},{"text":" 步","color":"white"}]'
execute if score $temp_index mem matches 0 run scoreboard players operation $progress_temp mem = @e[tag=marked_stage,limit=1] stage_step
execute if score $temp_index mem matches 0 run scoreboard players operation $progress_temp mem *= #100 mem
execute if score $temp_index mem matches 0 run scoreboard players operation $progress_temp mem -= @s world_progress
execute if score $temp_index mem matches 0 run scoreboard players operation $progress_part1 mem = $progress_temp mem
execute if score $temp_index mem matches 0 run scoreboard players operation $progress_part1 mem /= #100 mem
execute if score $temp_index mem matches 0 run scoreboard players operation $progress_part2 mem = $progress_temp mem
execute if score $temp_index mem matches 0 run scoreboard players operation $progress_part2 mem /= #10 mem
execute if score $temp_index mem matches 0 run scoreboard players operation $progress_part2 mem %= #10 mem
execute if score $temp_index mem matches 0 run scoreboard players operation $progress_part3 mem = $progress_temp mem
execute if score $temp_index mem matches 0 run scoreboard players operation $progress_part3 mem %= #10 mem
execute if score $temp_index mem matches 0 run data modify block 0 1 0 front_text.messages[0] set value '[{"text":"剩余：","color":"white"},{"score":{"name":"$progress_part1","objective":"mem"},"color":"red"},{"text":".","color":"red"},{"score":{"name":"$progress_part2","objective":"mem"},"color":"red"},{"score":{"name":"$progress_part3","objective":"mem"},"color":"red"},{"text":" / ","color":"white"},{"score":{"name":"@e[tag=marked_stage,limit=1]","objective":"stage_step"},"color":"yellow"}]'
execute if score $temp_index mem matches -4..0 run data modify storage ltw:world Actionbar.B set from block 0 1 0 front_text.messages[0]
execute if score $temp_index mem matches -4..-1 if score @e[tag=marked_stage,limit=1] stage_index = $world_stage_max mem run data modify storage ltw:world Actionbar.B set value '{"text":"终点","color":"light_purple"}'
execute if score $temp_index mem matches 1.. run data modify storage ltw:world Actionbar.B set value '{"text":"此台阶已开拓！","color":"green"}'
execute if score @s world_stage = $world_stage_max mem run data modify storage ltw:world Actionbar.B set value '{"text":"此台阶已开拓！","color":"green"}'

## 格子奖励
execute if score $temp_index mem matches ..-5 run data modify storage ltw:world Actionbar.C set value '{"text":"","color":"white"}'
execute if score $temp_index mem matches -4..-1 if score @e[tag=marked_stage,limit=1] stage_reward matches 1.. run data modify block 0 1 0 front_text.messages[0] set value '[{"text":" +","color":"gold"},{"score":{"name":"@e[tag=marked_stage,limit=1]","objective":"stage_reward"},"color":"gold"},{"text":" 金粒","color":"gold"}]'
execute if score $temp_index mem matches -4..-1 if score @e[tag=marked_stage,limit=1] stage_reward matches 1.. run data modify storage ltw:world Actionbar.C set from block 0 1 0 front_text.messages[0]
execute if score $temp_index mem matches -4..-1 unless score @e[tag=marked_stage,limit=1] stage_reward matches 1.. run data modify storage ltw:world Actionbar.C set value '{"text":"","color":"white"}'
execute if score $temp_index mem matches 0.. run data modify storage ltw:world Actionbar.C set value '{"text":"","color":"white"}'

title @s actionbar [{"nbt": "Actionbar.A","storage": "ltw:world","interpret": true},{"nbt": "Actionbar.B","storage": "ltw:world","interpret": true},{"nbt": "Actionbar.C","storage": "ltw:world","interpret": true}]

tag @e remove marked_stage