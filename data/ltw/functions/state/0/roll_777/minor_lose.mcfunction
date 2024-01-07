scoreboard players operation @s gold /= #2 mem
scoreboard players set $lucky_claimed mem 1
title @s subtitle {"text": "小失败","color": "red"}
title @s times 0 60 20
title @s title [{"score": {"name": "$lucky_777_A","objective": "mem"},"color":"red"},{"score": {"name": "$lucky_777_B","objective": "mem"},"color":"red"},{"score": {"name": "$lucky_777_C","objective": "mem"},"color": "red"}]
execute unless score @s gold matches 0 run tellraw @a ["",{"text":">> ","color":"red","bold":true},{"selector": "@s","color":"red"}," 买了 ",{"score": {"name": "@s","objective": "777"},"color": "red"}," 个幸运 777 代币, 抽出了 ",{"score": {"name": "$lucky_777_A","objective": "mem"},"color":"red"},{"score": {"name": "$lucky_777_B","objective": "mem"},"color":"red"},{"score": {"name": "$lucky_777_C","objective": "mem"},"color":"red"},{"text": "，小失败","color": "red"}, ", 金粒数减半！"]
execute if score @s gold matches 0 run tellraw @a ["",{"text":">> ","color":"red","bold":true},{"selector": "@s","color":"red"}," 买了 ",{"score": {"name": "@s","objective": "777"},"color": "red"}," 个幸运 777 代币, 抽出了 ",{"score": {"name": "$lucky_777_A","objective": "mem"},"color":"red"},{"score": {"name": "$lucky_777_B","objective": "mem"},"color":"red"},{"score": {"name": "$lucky_777_C","objective": "mem"},"color":"red"},{"text": "，小失败","color": "red"}, ", 把金粒用完了……"]
scoreboard players set @s 777 0
execute at @s run function lib:sounds/error