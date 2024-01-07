advancement grant @s[scores={gold=243..}] only ltw:egg/lobby/dirt_block
scoreboard players add @s gold 81
scoreboard players add @s primogem 64
title @s subtitle {"text": "大成功","color": "green"}
title @s times 0 60 20
title @s title [{"text": "|","color": "gold","obfuscated": true},{"text": " 20 ","color":"green","obfuscated": false},{"text": "|","color": "gold","obfuscated": true}]
tellraw @a ["",{"text":">> ","color":"green","bold":true},{"selector": "@s","color":"green"}," 买了一颗二十面骰, 掷出了 ",{"text": "20, 大成功","color":"green"}, ", 获得了 1 金块与 1 个魔法符咒!"]
tp @s -1 28 -47 -90 0
execute at @s run function lib:sounds/levelup
