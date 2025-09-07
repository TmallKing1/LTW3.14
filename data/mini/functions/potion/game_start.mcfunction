# 游戏结束倒计时
scoreboard players set $countdown mem 90
execute if score $ley_line_disorder mem matches -1 run scoreboard players set $countdown mem 180

# HUD
scoreboard objectives setdisplay list total_score_disp
scoreboard objectives setdisplay below_name health_virt
scoreboard objectives setdisplay sidebar health_virt
scoreboard players set $bossbar_color mem 3
scoreboard players set $countdown_max mem 90
execute if score $ley_line_disorder mem matches -1 run scoreboard players set $countdown_max mem 180
scoreboard players set $bossbar_type mem 2
function lib:bossbar/show
execute if score $countdown_second mem matches 10.. run bossbar set mini:green name ["剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "green"},{"text": ":","color": "green"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "green"},"]"]
execute unless score $countdown_second mem matches 10.. run bossbar set mini:green name ["剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "green"},{"text": ":0","color": "green"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "green"},"]"]