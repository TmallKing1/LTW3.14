gamerule doDaylightCycle true
scoreboard players set $countdown mem 40
scoreboard players set $countdown_fast mem 10

# 给予玩家生命恢复
schedule function mini:zombie/give_effect1 5t

# HUD
scoreboard objectives setdisplay list health_disp
scoreboard objectives setdisplay below_name health_disp
scoreboard objectives setdisplay sidebar power_count
scoreboard players set $bossbar_color mem 4
scoreboard players set $countdown_max mem 40
scoreboard players set $bossbar_type mem 2
function lib:bossbar/show
execute if score $countdown_second mem matches 10.. run bossbar set mini:blue name [{"text": "僵尸生命值提升 ","color": "red"},"剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "aqua"},{"text": ":","color": "aqua"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "aqua"},"]"]
execute unless score $countdown_second mem matches 10.. run bossbar set mini:blue name [{"text": "僵尸生命值提升 ","color": "red"},"剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "aqua"},{"text": ":0","color": "aqua"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "aqua"},"]"]
bossbar set mini:red name "强制死亡模式"