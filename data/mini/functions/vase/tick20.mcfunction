# 显示时间
bossbar set mini:blue name ["第 ",{"score": {"name": "$current_turn","objective": "mem"},"color": "aqua"}," 回合 [",{"score":{"name": "$countdown","objective": "mem"},"color": "aqua"},"]"]

execute if score $current_turn mem matches 1 if score $countdown mem matches 5 run tellraw @s[team=playing,scores={stat_level=..10}] [{"text":"\n>> ","color":"light_purple","bold": true},{"text":"提示：苦力怕罐子会对附近玩家造成伤害，而爱心罐子可用来回复生命值！","bold":false},"\n "]

# 时间到切换下一回合
execute if score $countdown mem matches ..0 run function mini:vase/game/next_state