# 给予传送卷轴 
summon item ~ ~ ~ {Item:{id:"paper",Count:1b,tag:{display:{Name:'[{"text": "传送卷轴 (按 ","color": "green","italic": false},{"keybind": "key.swapOffhand","color": "green","italic": false},{"text": " 传送)","color": "green","italic": false}]'},teleportation:1b,stats_item:1b}},Tags:["score_item","new_stats"],PickupDelay:0}
data modify entity @e[type=item,tag=score_item,limit=1] Owner set from entity @s UUID
data modify entity @e[type=item,tag=score_item,limit=1] Thrower set from entity @s UUID
tag @e[type=item,tag=score_item] remove score_item