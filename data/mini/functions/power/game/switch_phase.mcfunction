execute if score $power_phase mem matches 2 run function mini:main/game_end

execute if score $power_phase mem matches 1 run tellraw @a ["",{"text": ">> ","color": "red","bold": true},{"text": "所有玩家的攻击伤害提升了！","color": "red"}]
execute if score $power_phase mem matches 1 run scoreboard players add @a[tag=mini_running] player_atk 100
execute if score $power_phase mem matches 1 as @a[tag=mini_running] at @s run function mini:power/game/give_sword
execute if score $power_phase mem matches 1 run bossbar set mini:blue name ["",{"text": "游戏结束 ","color": "red"},"剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "aqua"},{"text": ":","color": "aqua"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "aqua"},"]"]
execute if score $power_phase mem matches 1 run scoreboard players set $countdown mem 80
execute if score $power_phase mem matches 1 run scoreboard players set $countdown_max mem 80
execute if score $power_phase mem matches 1 run scoreboard players set $power_phase mem 2

execute if score $power_phase mem matches 0 run tellraw @a ["",{"text": ">> ","color": "red","bold": true},{"text": "现在所有玩家的能量值会缓慢回复！","color": "red"}]
execute if score $power_phase mem matches 0 run bossbar set mini:blue name ["",{"text": "全员攻击伤害提升 ","color": "red"},"剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "aqua"},{"text": ":","color": "aqua"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "aqua"},"]"]
execute if score $power_phase mem matches 0 run scoreboard players set $countdown mem 60
execute if score $power_phase mem matches 0 run scoreboard players set $power_phase mem 1
function lib:bossbar/show