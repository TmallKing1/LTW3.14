# 显示剩余时间 Bossbar
execute if score $power_phase mem matches 0 if score $countdown_second mem matches 10.. run bossbar set mini:blue name ["",{"text": "能量值持续回复 ","color": "red"},"剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "aqua"},{"text": ":","color": "aqua"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "aqua"},"]"]
execute if score $power_phase mem matches 1 if score $countdown_second mem matches 10.. run bossbar set mini:blue name ["",{"text": "全员攻击伤害提升 ","color": "red"},"剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "aqua"},{"text": ":","color": "aqua"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "aqua"},"]"]
execute if score $power_phase mem matches 2 if score $countdown_second mem matches 10.. run bossbar set mini:blue name ["",{"text": "游戏结束 ","color": "red"},"剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "aqua"},{"text": ":","color": "aqua"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "aqua"},"]"]
execute if score $power_phase mem matches 0 unless score $countdown_second mem matches 10.. run bossbar set mini:blue name ["",{"text": "能量值持续回复 ","color": "red"},"剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "aqua"},{"text": ":0","color": "aqua"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "aqua"},"]"]
execute if score $power_phase mem matches 1 unless score $countdown_second mem matches 10.. run bossbar set mini:blue name ["",{"text": "全员攻击伤害提升 ","color": "red"},"剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "aqua"},{"text": ":0","color": "aqua"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "aqua"},"]"]
execute if score $power_phase mem matches 2 unless score $countdown_second mem matches 10.. run bossbar set mini:blue name ["",{"text": "游戏结束 ","color": "red"},"剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "aqua"},{"text": ":0","color": "aqua"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "aqua"},"]"]

# 四秒一次生成物品
execute store result score $item_count mem if entity @e[tag=power_entity,type=item]
execute if score $item_count mem matches ..20 run function mini:power/game/summon_item

# 第二阶段增加能量值
execute if score $power_phase mem matches 1.. run scoreboard players add @a[scores={player_energy=..99},tag=mini_running] player_energy 3
scoreboard players set @a[scores={player_energy=101..},tag=mini_running] player_energy 100

# 检测倒计时为零
execute if score $countdown mem matches 0 run function mini:power/game/switch_phase