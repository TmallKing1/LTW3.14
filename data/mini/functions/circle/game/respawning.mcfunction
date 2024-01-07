scoreboard players operation $seconds_player mem = @s countdown_fast
scoreboard players operation $100ms_player mem = @s countdown_fast
scoreboard players operation $seconds_player mem /= #10 mem
scoreboard players operation $100ms_player mem %= #10 mem
title @s times 0t 2s 5t
title @s[scores={countdown_fast=1..}] subtitle [{"text": "你将在 ","color": "yellow"},{"score": {"name": "$seconds_player","objective": "mem"},"color": "light_purple"},{"text": ".","color": "light_purple"},{"score":{"name": "$100ms_player","objective": "mem"},"color": "light_purple"},{"text": " 秒后重生"}]
title @s[scores={countdown_fast=0}] subtitle [{"text": "已重生！","color": "green"}]
title @s title ""
execute as @s[scores={countdown_fast=0}] at @s run function mini:circle/game/respawn
tag @s[scores={countdown_fast=0}] remove respawning