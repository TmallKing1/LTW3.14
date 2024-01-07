scoreboard players add @s gold 9
title @s subtitle "返还 1 金锭"
title @s times 0 60 20
title @s title [{"score": {"name": "$random","objective": "mem"},"color":"aqua"}]
tellraw @a ["",{"text":">> ","color":"aqua","bold":true},{"selector": "@s","color":"aqua"}," 买了一颗二十面骰, 掷出了 ",{"score": {"name": "$random","objective": "mem"},"color":"aqua"}, ", 拿回了自己的 1 金锭!"]
execute at @s run function lib:sounds/hit2