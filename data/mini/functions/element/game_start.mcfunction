# 游戏结束倒计时
scoreboard players set $countdown mem 200

# HUD
scoreboard objectives setdisplay list health_disp
scoreboard objectives setdisplay below_name health_disp
scoreboard objectives setdisplay sidebar kills
scoreboard players set $bossbar_color mem 3
scoreboard players set $countdown_max mem 200
scoreboard players set $bossbar_type mem 2
function lib:bossbar/show
execute if score $countdown_second mem matches 10.. run bossbar set mini:green name ["剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "green"},{"text": ":","color": "green"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "green"},"]"]
execute unless score $countdown_second mem matches 10.. run bossbar set mini:green name ["剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "green"},{"text": ":0","color": "green"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "green"},"]"]

# 自然生命恢复
gamerule naturalRegeneration false