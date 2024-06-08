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

# 幻境干扰 1
execute if score $ley_line_disorder mem matches 1 run function mini:element/game/lld/1_enhance
execute if score $ley_line_disorder mem matches 1 run bossbar set mini:lld visible true
execute if score $ley_line_disorder mem matches 1 run bossbar set mini:lld color pink
execute if score $ley_line_disorder mem matches 1 run bossbar set mini:lld name [{"text": "| 幻境不稳定度 |","color": "#EC00B8"}]
execute if score $ley_line_disorder mem matches 1 run execute store result bossbar mini:lld max run scoreboard players get $period_lld_max mem