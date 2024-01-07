scoreboard players add @s gold 18
scoreboard players set $lucky_claimed mem 1
title @s subtitle "获得 2 金锭"
title @s times 0 60 20
title @s title [{"score": {"name": "$lucky_777_A","objective": "mem"},"color":"green"},{"score": {"name": "$lucky_777_B","objective": "mem"},"color":"green"},{"score": {"name": "$lucky_777_C","objective": "mem"},"color": "green"}]
tellraw @a ["",{"text":">> ","color":"green","bold":true},{"selector": "@s","color":"green"}," 买了 ",{"score": {"name": "@s","objective": "777"},"color": "green"}," 个幸运 777 代币, 抽出了 ",{"score": {"name": "$lucky_777_A","objective": "mem"},"color":"green"},{"score": {"name": "$lucky_777_B","objective": "mem"},"color":"green"},{"score": {"name": "$lucky_777_C","objective": "mem"},"color":"green"}, ", 运气绝佳, 获得了 2 金锭!"]
scoreboard players set @s 777 0
execute at @s run function lib:sounds/hit