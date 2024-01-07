scoreboard players set @s gold 0
title @s subtitle {"text": "大失败","color": "red"}
title @s times 0t 60t 20t
title @s title [{"text": "|","color": "black","obfuscated": true},{"text": " 19 ","color":"red","obfuscated": false},{"text": "|","color": "black","obfuscated": true}]
tellraw @a ["",{"text":">> ","color":"red","bold":true},{"selector": "@s","color":"red"}," 买了一颗二十面骰, 掷出了 ",{"text": "19, 大失败","color":"red"}, ", 倾家荡产, 被丢了出去!"]
tp @s -0.5 27.5 -49.5 0 -11
effect give @s slow_falling 1 0 true
execute at @s run function lib:sounds/error