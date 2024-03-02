# HUD
scoreboard objectives setdisplay list mini_heart_disp
scoreboard objectives setdisplay below_name mini_heart
scoreboard objectives setdisplay sidebar total_score_disp
scoreboard players set $bossbar_color mem 0
scoreboard players set $bossbar_type mem 1
function lib:bossbar/show

# 世界边界
worldborder center 999.0 17048.0
worldborder set 100

# 开始第一轮
function mini:chain/game/start_round