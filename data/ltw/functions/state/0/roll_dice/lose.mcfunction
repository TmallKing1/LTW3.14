title @s subtitle "一无所获……"
title @s times 0 60 20
title @s title [{"score": {"name": "$random","objective": "mem"},"color":"aqua"}]
tellraw @a ["",{"text":">> ","color":"aqua","bold":true},{"selector": "@s","color":"aqua"}," 买了一颗二十面骰, 掷出了 ",{"score": {"name": "$random","objective": "mem"},"color":"aqua"}, ", 一无所获……"]
execute at @s run function lib:sounds/error