# 延迟1tick玩家tp
schedule function mini:bullet/player_enter2 1t replace

# HUD
scoreboard objectives setdisplay list total_score_disp
scoreboard objectives setdisplay below_name total_score_disp
scoreboard objectives setdisplay sidebar power_count
scoreboard players set $bossbar_type mem 0
function lib:bossbar/show