# HUD
scoreboard objectives setdisplay list mini_heart_disp
scoreboard objectives setdisplay below_name mini_heart
scoreboard objectives setdisplay sidebar total_score
scoreboard players set $bossbar_type mem 1
function lib:bossbar/show

# 开始第一轮
function mini:seat/game/mc_init

# 传送矿车
schedule function mini:seat/game/mc_teleport 5t