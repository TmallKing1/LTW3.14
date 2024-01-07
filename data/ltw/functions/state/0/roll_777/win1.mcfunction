scoreboard players add @s gold 2
scoreboard players set $lucky_claimed mem 1
title @s subtitle "获得 2 金粒"
title @s times 0 60 20
title @s title [{"score": {"name": "$lucky_777_A","objective": "mem"},"color":"aqua"},{"score": {"name": "$lucky_777_B","objective": "mem"},"color":"aqua"},{"score": {"name": "$lucky_777_C","objective": "mem"},"color": "aqua"}]
execute at @s run function lib:sounds/hit2