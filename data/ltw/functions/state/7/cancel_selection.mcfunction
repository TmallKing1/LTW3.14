# 当玩家取消选择奖励时触发
gamemode spectator @s
clear @s barrier

# 防多次触发 bug
execute unless entity @s[tag=selecting] run return 0

tag @s remove selecting
execute unless entity @a[tag=selecting] run function ltw:state/7/next
tellraw @a ["",{"text": ">> ","color":"red","bold": true},{"selector": "@s","color":"red"}," 未选择奖励……"]
