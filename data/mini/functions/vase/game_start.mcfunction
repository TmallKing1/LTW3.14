# HUD
scoreboard objectives setdisplay list health_disp
scoreboard objectives setdisplay below_name health_disp
scoreboard objectives setdisplay sidebar vase_broken
scoreboard players set $bossbar_color mem 4
scoreboard players set $countdown_max mem 20
execute if score $ley_line_disorder mem matches -1 run scoreboard players set $countdown_max mem 15
scoreboard players set $bossbar_type mem 2
function lib:bossbar/show
execute if score $countdown_second mem matches 10.. run bossbar set mini:blue name ["第 ",{"score": {"name": "$current_turn","objective": "mem"},"color": "aqua"}," 回合 [",{"score":{"name": "$countdown","objective": "mem"},"color": "aqua"},"]"]

# 开始第一回合
scoreboard players set $current_turn mem 0
function mini:vase/game/next_state