advancement grant @s[scores={gold=243..}] only ltw:egg/lobby/dirt_block
scoreboard players add @s gold 135
scoreboard players add @s primogem 64
scoreboard players set $lucky_claimed mem 1
title @s subtitle {"text": "大成功","color": "green"}
title @s times 0t 60t 20t
title @s title [{"text": "|","color": "gold","obfuscated": true},{"text": " 777 ","color":"green","obfuscated": false},{"text": "|","color": "gold","obfuscated": true}]
tellraw @a ["",{"text":">> ","color":"green","bold":true},{"selector": "@s","color":"green"}," 买了 ",{"score": {"name": "@s","objective": "777"},"color": "green"}," 个幸运 777 代币, 抽出了 ",{"text": "777, 大成功","color":"green"}, ", 获得了 15 金锭与 1 个魔法符咒!"]
tp @s -1 28 -47 -90 0
scoreboard players set @s 777 0
execute at @s run function lib:sounds/levelup