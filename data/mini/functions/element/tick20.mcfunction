# 剩余时间显示
execute unless score $ley_line_disorder mem matches 1 if score $countdown_second mem matches 10.. run bossbar set mini:green name ["剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "green"},{"text": ":","color": "green"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "green"},"]"]
execute unless score $ley_line_disorder mem matches 1 unless score $countdown_second mem matches 10.. run bossbar set mini:green name ["剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "green"},{"text": ":0","color": "green"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "green"},"]"]
execute if score $ley_line_disorder mem matches 1 if score $countdown_second mem matches 10.. run bossbar set mini:green name ["剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "green"},{"text": ":","color": "green"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "green"},"] 当前强化元素 ",{"nbt": "element_enhance","storage": "mini:element","interpret": true}]
execute if score $ley_line_disorder mem matches 1 unless score $countdown_second mem matches 10.. run bossbar set mini:green name ["剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "green"},{"text": ":0","color": "green"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "green"},"] 当前强化元素 ",{"nbt": "element_enhance","storage": "mini:element","interpret": true}]

# 显示倒计时
execute if score $countdown mem matches ..10 run title @a times 3t 14t 2t
execute if score $countdown mem matches ..10 run title @a subtitle {"score":{"name":"$countdown","objective":"mem"}}
execute if score $countdown mem matches ..10 run title @a title [""]
execute if score $countdown mem matches ..10 as @a at @s run function lib:sounds/hit2

# 180s：教学
#execute if score $countdown mem matches 180 run tellraw @a[team=playing,scores={act_turns=..4}] [{"text":"\n>> ","color":"light_purple","bold": true},{"text":"提示：你可以在保持不动的情况下长按潜行键进行静息治疗并清除你的元素附着，就像在《方块竞技场》中一样！","bold":false},"\n "]

# 0s：游戏结束
execute if score $countdown mem matches 0 run function mini:main/game_end