# 剩余时间显示
bossbar set mini:green name ["剩余时间 [",{"score":{"name": "$countdown","objective": "mem"},"color": "green"},"]"]

# 回血
effect give @e[type=ravager] instant_health infinite 5 true

# 结束游戏
execute if score $countdown mem matches ..0 run function mini:attack/game_end