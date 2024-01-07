# 阶段结束倒计时
scoreboard players set $countdown mem 60
scoreboard players set $countdown_max mem 60

# HUD
scoreboard objectives setdisplay list health_disp
scoreboard objectives setdisplay below_name player_atk
scoreboard objectives setdisplay sidebar kills
scoreboard players set $bossbar_color mem 4
scoreboard players set $bossbar_type mem 2
function lib:bossbar/show
execute if score $countdown_second mem matches 10.. run bossbar set mini:blue name [{"text": "能量值持续回复 ","color": "red"},"剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "aqua"},{"text": ":","color": "aqua"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "aqua"},"]"]
execute unless score $countdown_second mem matches 10.. run bossbar set mini:blue name [{"text": "能量值持续回复 ","color": "red"},"剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "aqua"},{"text": ":0","color": "aqua"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "aqua"},"]"]

# 阶段 0
scoreboard players set $power_phase mem 0

# 世界边界
worldborder center 1028.5 19028.5
worldborder set 65