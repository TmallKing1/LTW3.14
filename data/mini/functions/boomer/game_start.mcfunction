# 游戏结束倒计时
scoreboard players set $countdown mem 70

# HUD
scoreboard objectives setdisplay list health_disp
scoreboard objectives setdisplay below_name health_disp
scoreboard objectives setdisplay sidebar health_alive
scoreboard players set $bossbar_color mem 3
scoreboard players set $countdown_max mem 70
scoreboard players set $bossbar_type mem 2
function lib:bossbar/show
execute if score $countdown_second mem matches 10.. run bossbar set mini:green name ["剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "green"},{"text": ":","color": "green"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "green"},"]"]
execute unless score $countdown_second mem matches 10.. run bossbar set mini:green name ["剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "green"},{"text": ":0","color": "green"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "green"},"]"]
bossbar set mini:red name "边界缩小"

# 边界设置
worldborder center 2016.0 1016.0
worldborder set 31
worldborder damage buffer 0
worldborder damage amount 1
worldborder warning time 3