scoreboard players add @s gold 27
title @s subtitle "获得 3 金锭"
title @s times 0 60 20
title @s title [{"score": {"name": "$random","objective": "mem"},"color":"green"}]
tellraw @a ["",{"text":">> ","color":"green","bold":true},{"selector": "@s","color":"green"}," 买了一颗二十面骰, 掷出了 ",{"score": {"name": "$random","objective": "mem"},"color":"green"}, ", 运气绝佳, 获得了 3 金锭!"]
execute at @s run function lib:sounds/hit