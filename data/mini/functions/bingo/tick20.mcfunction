xp set @a 0 points

# 剩余时间 Bossbar 显示
execute if score $countdown_second mem matches 10.. run bossbar set mini:red name ["剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "red"},{"text": ":","color": "red"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "red"},"]"]
execute if score $countdown_second mem matches 10.. run bossbar set mini:yellow name ["剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "yellow"},{"text": ":","color": "yellow"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "yellow"},"]"]
execute if score $countdown_second mem matches 10.. run bossbar set mini:blue name ["剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "aqua"},{"text": ":","color": "aqua"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "aqua"},"]"]
execute unless score $countdown_second mem matches 10.. run bossbar set mini:red name ["剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "red"},{"text": ":0","color": "red"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "red"},"]"]
execute unless score $countdown_second mem matches 10.. run bossbar set mini:yellow name ["剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "yellow"},{"text": ":0","color": "yellow"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "yellow"},"]"]
execute unless score $countdown_second mem matches 10.. run bossbar set mini:blue name ["剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "aqua"},{"text": ":0","color": "aqua"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "aqua"},"]"]

# 显示倒计时
execute if score $countdown mem matches ..10 run title @a times 3t 14t 2t
execute if score $countdown mem matches ..10 run title @a subtitle {"score":{"name":"$countdown","objective":"mem"}}
execute if score $countdown mem matches ..10 run title @a title [""]
execute if score $countdown mem matches ..10 as @a at @s run function lib:sounds/hit2

# 180s：教学
execute if score $countdown mem matches 180 run tellraw @s[team=playing,scores={emerald=0}] [{"text":"\n>> ","color":"light_purple","bold": true},{"text":"提示：手持蜜脾打开任务面板，收集横/纵向一条线上三个物品即为成功！","bold":false},"\n "]
execute if score $countdown mem matches 180 run tellraw @s[team=playing,scores={emerald=1..}] [{"text":"\n>> ","color":"light_purple","bold": true},{"text":"提示：地牢的箱子中有积分与书等资源，寻找地牢也是不错的选择！","bold":false},"\n "]

# 150s：提示空投
execute if score $countdown mem matches 150 run title @a subtitle {"text":"⚠ 空投将在三十秒后释放！ ⚠","color":"red"}
execute if score $countdown mem matches 150 run title @a times 1t 50t 3t
execute if score $countdown mem matches 150 run title @a title ""

# 120s：释放空投
execute if score $countdown mem matches 120 run title @a subtitle {"text":"⚠ 空投已经释放！ ⚠","color":"yellow"}
execute if score $countdown mem matches 120 run title @a times 1t 50t 3t
execute if score $countdown mem matches 120 run title @a title ""
execute if score $countdown mem matches 120 run function mini:bingo/game/airdrop
execute if score $countdown mem matches 120 run scoreboard players set $bossbar_color mem 2
execute if score $countdown mem matches 120 run function lib:bossbar/show

# 60s：时间提示
execute if score $countdown mem matches 60 run title @a subtitle {"text":"⚠ 还剩一分钟！ ⚠","color":"yellow"}
execute if score $countdown mem matches 60 run title @a times 1t 50t 3t
execute if score $countdown mem matches 60 run title @a title ""
execute if score $countdown mem matches 60 run scoreboard players set $bossbar_color mem 1
execute if score $countdown mem matches 60 run function lib:bossbar/show

# 30s：时间提示
execute if score $countdown mem matches 30 run title @a subtitle {"text":"⚠ 最后三十秒！ ⚠","color":"gold"}
execute if score $countdown mem matches 30 run title @a times 1t 50t 3t
execute if score $countdown mem matches 30 run title @a title ""

# 0s：游戏结束
execute if score $countdown mem matches 0 run function mini:main/game_end

# 回复生命值
execute if score $foursec mem matches 1 run effect give @a[team=playing] regeneration 1 10 true
execute if score $foursec mem matches 1 run schedule function mini:trade/game/clear_effect 1t replace