# 游戏结束倒计时
scoreboard players set $countdown mem 30

# HUD
scoreboard objectives setdisplay list total_score_disp
scoreboard objectives setdisplay below_name total_score_disp
scoreboard objectives setdisplay sidebar damage_dealt
scoreboard players set $bossbar_color mem 3
scoreboard players set $countdown_max mem 30
scoreboard players set $bossbar_type mem 2
function lib:bossbar/show
bossbar set mini:green name ["剩余时间 [",{"score":{"name": "$countdown","objective": "mem"},"color": "green"},"]"]

# 世界边界
worldborder center 999.0 17048.0
worldborder set 20

# 生成劫掠兽
summon ravager 999.0 16.0 17048.0 {NoAI:1b,Health:114514,Attributes:[{Name:"generic.max_health",Base: 114514}]}