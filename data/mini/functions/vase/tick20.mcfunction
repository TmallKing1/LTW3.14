# 显示时间
bossbar set mini:blue name ["第 ",{"score": {"name": "$current_turn","objective": "mem"},"color": "aqua"}," 回合 [",{"score":{"name": "$countdown","objective": "mem"},"color": "aqua"},"]"]

# 时间到切换下一回合
execute if score $countdown mem matches ..0 run function mini:vase/game/next_state