# 游戏结束倒计时
scoreboard players operation $countdown mem = $timer_max mem

# 延迟1tick玩家tp
schedule function mini:river/player_enter2 1t replace

# HUD
scoreboard objectives setdisplay list mini_heart_disp
scoreboard objectives setdisplay below_name tran_mats
scoreboard objectives setdisplay sidebar tran_mats
execute if score $ley_line_disorder mem matches -1 run scoreboard objectives setdisplay list power_count
execute if score $ley_line_disorder mem matches -1 run scoreboard objectives setdisplay below_name power_count
execute if score $ley_line_disorder mem matches -1 run scoreboard objectives setdisplay sidebar power_count
scoreboard players set @a[team=playing,tag=mini_running] tran_mats 0
scoreboard players set $bossbar_color mem 4
scoreboard players operation $countdown_max mem = $timer_max mem
scoreboard players set $bossbar_type mem 2
function lib:bossbar/show
execute if score $countdown_second mem matches 10.. run bossbar set mini:blue name ["剩余时间 [",{"score":{"name": "$countdown_second","objective": "mem"},"color": "aqua"},{"text": "/","color": "aqua"},{"score":{"name": "$countdown_max","objective": "mem"},"color": "aqua"},"]"]
execute unless score $countdown_second mem matches 10.. run bossbar set mini:blue name ["剩余时间 [",{"score":{"name": "$countdown_second","objective": "mem"},"color": "aqua"},{"text": "/","color": "aqua"},{"score":{"name": "$countdown_max","objective": "mem"},"color": "aqua"},"]"]

# 清除所有该游戏实体
kill @e[tag=river_entity]

# 生成可用于拿取物资的交互实体
execute unless score $ley_line_disorder mem matches -1 run summon interaction 1029.5 19 16028.5 {Tags: ["basic", "river_entity"], width: 0.9f, height: 0.9f, response: 1b}
execute unless score $ley_line_disorder mem matches -1 run summon interaction 1029.5 19 16018.5 {Tags: ["basic", "river_entity"], width: 0.9f, height: 0.9f, response: 1b}
execute unless score $ley_line_disorder mem matches -1 run summon interaction 1029.5 19 16013.5 {Tags: ["basic", "river_entity"], width: 0.9f, height: 0.9f, response: 1b}
execute unless score $ley_line_disorder mem matches -1 run summon interaction 1029.5 19 16003.5 {Tags: ["basic", "river_entity"], width: 0.9f, height: 0.9f, response: 1b}
summon interaction 1028.5 19 16008.5 {Tags: ["speci", "river_entity"], width: 0.9f, height: 0.9f, response: 1b}
summon interaction 1028.5 19 16023.5 {Tags: ["speci", "river_entity"], width: 0.9f, height: 0.9f, response: 1b}

# 生成初始物资
execute unless score $ley_line_disorder mem matches -1 as @e[type=interaction,tag=river_entity,tag=basic] at @s run function mini:river/game/new_mats_single