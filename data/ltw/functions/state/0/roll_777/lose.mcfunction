scoreboard players set $lucky_claimed mem 1
title @s subtitle "一无所获……"
title @s times 0 60 20
title @s title [{"score": {"name": "$lucky_777_A","objective": "mem"},"color":"aqua"},{"score": {"name": "$lucky_777_B","objective": "mem"},"color":"aqua"},{"score": {"name": "$lucky_777_C","objective": "mem"},"color": "aqua"}]
execute if score @s gold matches 0 run tellraw @a ["",{"text":">> ","color":"aqua","bold":true},{"selector": "@s","color":"aqua"}," 买了 ",{"score": {"name": "@s","objective": "777"},"color": "aqua"}," 个幸运 777 代币, 抽出了 ",{"score": {"name": "$lucky_777_A","objective": "mem"},"color":"aqua"},{"score": {"name": "$lucky_777_B","objective": "mem"},"color":"aqua"},{"score": {"name": "$lucky_777_C","objective": "mem"},"color":"aqua"}, ", 把金粒用完了……"]
execute if score @s gold matches 0 run scoreboard players set @s 777 0
execute at @s run function lib:sounds/error