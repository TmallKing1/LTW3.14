# 地狱门音效
execute store result score $random mem run random value 1..3
execute if score $random mem matches 2 run playsound block.portal.ambient ambient @a 1014.5 22 1057.5

# 显示宝藏轮廓
team join gold @e[tag=treasure_item]
effect give @e[tag=treasure_item] glowing infinite 0 true

# 120s：教学
execute if score $countdown mem matches 120 run tellraw @s[team=playing,scores={stat_level=..10}] [{"text":"\n>> ","color":"light_purple","bold": true},{"text":"提示：规划一条合适的路线有助于更快完成目标！","bold":false},"\n "]

# 显示剩余时间 Bossbar
execute if score $countdown_second mem matches 10.. run bossbar set mini:blue name ["剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "aqua"},{"text": ":","color": "aqua"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "aqua"},"]"]
execute unless score $countdown_second mem matches 10.. run bossbar set mini:blue name ["剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "aqua"},{"text": ":0","color": "aqua"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "aqua"},"]"]

# 显示倒计时
execute if score $countdown mem matches ..10 run title @a times 3t 14t 2t
execute if score $countdown mem matches ..10 run title @a subtitle {"score":{"name":"$countdown","objective":"mem"}}
execute if score $countdown mem matches ..10 run title @a title [""]
execute if score $countdown mem matches ..10 as @a at @s run function lib:sounds/hit2

# 0s：游戏结束
execute if score $countdown mem matches 0 run function mini:main/game_end
