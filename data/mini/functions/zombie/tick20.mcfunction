# 多图模式
execute if score $map mem matches 1 run function mini:zombie/maps/1/tick20
execute if score $map mem matches 2 run function mini:zombie/maps/2/tick20

# 显示提示
execute if score $zombie_stage mem matches 0 if score $countdown mem matches 30 run tellraw @a[team=playing,scores={green_total=..10}] [{"text":"\n>> ","color":"light_purple","bold": true},{"text":"提示：如果你没有其它武器的话，不妨试试无攻击间隔的 1.8 高科技木剑……","bold":false},"\n "]

# 给所有玩家增加能量值
execute unless score $ley_line_disorder mem matches 3 run scoreboard players add @a[tag=mini_running] power_count 1

# 夜视
effect give @a night_vision 100000 0 true

# 失明
execute if score $ley_line_disorder mem matches 1 run effect give @a[gamemode=!spectator] blindness 100000 0 true
effect clear @a[gamemode=spectator] blindness

# 显示剩余时间 Bossbar
execute if score $zombie_stage mem matches 0 if score $countdown_second mem matches 10.. run bossbar set mini:blue name ["",{"text": "僵尸攻击伤害提升 ","color": "red"},"剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "aqua"},{"text": ":","color": "aqua"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "aqua"},"]"]
execute if score $zombie_stage mem matches 1 if score $countdown_second mem matches 10.. run bossbar set mini:blue name ["",{"text": "僵尸移动速度与击退抗性提升 ","color": "red"},"剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "aqua"},{"text": ":","color": "aqua"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "aqua"},"]"]
execute if score $zombie_stage mem matches 2 if score $countdown_second mem matches 10.. run bossbar set mini:blue name ["",{"text": "僵尸生命值提升 ","color": "red"},"剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "aqua"},{"text": ":","color": "aqua"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "aqua"},"]"]
execute if score $zombie_stage mem matches 3 if score $countdown_second mem matches 10.. run bossbar set mini:blue name ["",{"text": "进入强制死亡 ","color": "red"},"剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "aqua"},{"text": ":","color": "aqua"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "aqua"},"]"]
execute if score $zombie_stage mem matches 0 unless score $countdown_second mem matches 10.. run bossbar set mini:blue name ["",{"text": "僵尸攻击伤害提升 ","color": "red"},"剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "aqua"},{"text": ":0","color": "aqua"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "aqua"},"]"]
execute if score $zombie_stage mem matches 1 unless score $countdown_second mem matches 10.. run bossbar set mini:blue name ["",{"text": "僵尸移动速度与击退抗性提升 ","color": "red"},"剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "aqua"},{"text": ":0","color": "aqua"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "aqua"},"]"]
execute if score $zombie_stage mem matches 2 unless score $countdown_second mem matches 10.. run bossbar set mini:blue name ["",{"text": "僵尸生命值提升 ","color": "red"},"剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "aqua"},{"text": ":0","color": "aqua"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "aqua"},"]"]
execute if score $zombie_stage mem matches 3 unless score $countdown_second mem matches 10.. run bossbar set mini:blue name ["",{"text": "进入强制死亡 ","color": "red"},"剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "aqua"},{"text": ":0","color": "aqua"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "aqua"},"]"]

# 显示倒计时
execute if score $zombie_stage mem matches 0..3 if score $countdown mem matches ..10 as @a at @s run function lib:sounds/hit2

# 0s：切换阶段
execute if score $countdown mem matches 0 if score $zombie_stage mem matches 0..3 run function mini:zombie/game/switch_stage

# 强制死亡模式
execute if score $zombie_stage mem matches 4 run effect clear @a resistance
execute if score $zombie_stage mem matches 4 run effect give @a[team=playing] wither infinite 2 true

# 回复生命值
execute if score $foursec mem matches 1 run effect give @a[team=playing] regeneration 1 10 true
execute if score $foursec mem matches 1 run schedule function mini:zombie/game/clear_effect 1t replace

# 重置旁观者分数
scoreboard players reset @a[team=!playing] power_count