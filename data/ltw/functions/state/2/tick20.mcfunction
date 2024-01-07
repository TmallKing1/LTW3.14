# 显示倒计时
execute if score $countdown mem matches ..25 run title @a times 3t 14t 2t
execute if score $countdown mem matches ..25 run title @a subtitle {"score":{"name":"$countdown","objective":"mem"}}
execute if score $countdown mem matches ..25 run title @a title [""]

# 退出状态
execute unless entity @a[tag=canvote] run function ltw:state/2/determine_game
execute if score $countdown mem matches 0 run function ltw:state/2/determine_game
