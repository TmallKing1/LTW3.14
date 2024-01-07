scoreboard players set @s gold 0
scoreboard players set $lucky_claimed mem 1
title @s subtitle {"text": "大失败","color": "red"}
title @s times 0 60 20
title @s title [{"text": "|","color": "black","obfuscated": true},{"text": " 000 ","color":"red","obfuscated": false},{"text": "|","color": "black","obfuscated": true}]
tellraw @a ["",{"text":">> ","color":"red","bold":true},{"selector": "@s","color":"red"}," 买了 ",{"score": {"name": "@s","objective": "777"},"color": "red"}," 个幸运 777 代币, 抽出了 ",{"score": {"name": "$lucky_777_A","objective": "mem"},"color":"red"},{"score": {"name": "$lucky_777_B","objective": "mem"},"color":"red"},{"score": {"name": "$lucky_777_C","objective": "mem"},"color":"red"},{"text": "，大失败","color": "red"}, ", 倾家荡产, 被丢了出去!"]
tp @s -0.5 27.5 -49.5 0 -11
effect give @s slow_falling 1 0 true
scoreboard players set @s 777 0
execute at @s run function lib:sounds/error