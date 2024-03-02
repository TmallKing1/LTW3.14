# 剩余时间显示
execute if score $countdown_second mem matches 10.. run bossbar set mini:green name ["剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "green"},{"text": ":","color": "green"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "green"},"]"]
execute unless score $countdown_second mem matches 10.. run bossbar set mini:green name ["剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "green"},{"text": ":0","color": "green"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "green"},"]"]

# 强制死亡的箭触发
execute if score $bossbar_color mem matches 1 as @a[team=playing,tag=mini_running] at @s run function mini:arrow/game/force_death

# 强制死亡机制
execute if score $countdown mem matches 21 run tellraw @a ["",{"text": ">> ","color": "gold","bold": true},{"text": "强制死亡将在 20 秒后开启！","color": "gold"}]
execute if score $countdown mem matches 1 run scoreboard players set $bossbar_color mem 1
execute if score $countdown mem matches 1 run function lib:bossbar/show
execute if score $countdown mem matches 1 as @a at @s run function lib:sounds/music/mini_fast
execute if score $countdown mem matches 1 as @a at @s run function lib:sounds/dragon_growl
execute if score $countdown mem matches 1 if score $player_alive mem matches ..2 run tellraw @a ["\n",{"text": ">> ","color": "gold","bold": true},{"text": "强制死亡已开启！\n ","color": "gold"}]

# 强制死亡持续时间
execute if score $countdown mem matches ..0 run scoreboard players add 强制死亡持续时间 layer 1