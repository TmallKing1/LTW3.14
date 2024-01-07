scoreboard players add @s gold 45
scoreboard players add @s primogem 64
scoreboard players set $lucky_claimed mem 1
title @s subtitle {"text": "小成功","color": "green"}
title @s times 0t 60t 20t
title @s title [{"score": {"name": "$lucky_777_A","objective": "mem"},"color":"green"},{"score": {"name": "$lucky_777_B","objective": "mem"},"color":"green"},{"score": {"name": "$lucky_777_C","objective": "mem"},"color": "green"}]
tellraw @a ["",{"text":">> ","color":"green","bold":true},{"selector": "@s","color":"green"}," 买了 ",{"score": {"name": "@s","objective": "777"},"color": "green"}," 个幸运 777 代币, 抽出了 ",{"score": {"name": "$lucky_777_A","objective": "mem"},"color":"green"},{"score": {"name": "$lucky_777_B","objective": "mem"},"color":"green"},{"score": {"name": "$lucky_777_C","objective": "mem"},"color":"green"},{"text": "，小成功","color":"green"}, ", 获得了 5 金锭与 1 个魔法符咒!"]
scoreboard players set @s 777 0
execute at @s run function lib:sounds/hit