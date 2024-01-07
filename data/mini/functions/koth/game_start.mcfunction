# 游戏结束倒计时
scoreboard players set $countdown mem 120

# HUD
scoreboard objectives setdisplay list power_count
scoreboard objectives setdisplay below_name power_count
scoreboard objectives setdisplay sidebar power_count
scoreboard players set $bossbar_color mem 4
scoreboard players set $countdown_max mem 120
scoreboard players set $bossbar_type mem 2
function lib:bossbar/show
execute if score $countdown_second mem matches 10.. run bossbar set mini:red name ["剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "red"},{"text": ":","color": "red"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "red"},"]"]
execute if score $countdown_second mem matches 10.. run bossbar set mini:yellow name ["剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "yellow"},{"text": ":","color": "yellow"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "yellow"},"]"]
execute if score $countdown_second mem matches 10.. run bossbar set mini:blue name ["剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "aqua"},{"text": ":","color": "aqua"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "aqua"},"]"]
execute unless score $countdown_second mem matches 10.. run bossbar set mini:red name ["剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "red"},{"text": ":0","color": "red"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "red"},"]"]
execute unless score $countdown_second mem matches 10.. run bossbar set mini:yellow name ["剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "yellow"},{"text": ":0","color": "yellow"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "yellow"},"]"]
execute unless score $countdown_second mem matches 10.. run bossbar set mini:blue name ["剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "aqua"},{"text": ":0","color": "aqua"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "aqua"},"]"]
