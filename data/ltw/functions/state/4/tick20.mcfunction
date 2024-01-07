# 显示倒计时
title @a times 3t 14t 2t
title @a subtitle {"score":{"name":"$countdown","objective":"mem"}}
title @a title [""]

# mcc
execute if score $countdown mem matches ..10 as @a at @s run playsound mcc:games.global.timer.tick.normal player @s
execute if score $countdown mem matches ..3 as @a at @s run playsound mcc:games.global.countdown.123 player @s

# Hopper 生成地图
execute if score $countdown mem matches 14 if score $mini_type mem matches 104 run schedule function mini:hopper/game/map_gen/start 1s

# 退出状态
execute if score $countdown mem matches 0 run function ltw:state/5/state_enter
