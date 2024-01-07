tag @a remove get_treasure

execute positioned 1009.50 14.50 1007.50 as @a[tag=!treasure1,team=playing,gamemode=!spectator,distance=..2] unless entity @a[tag=treasure1] run tellraw @a ["",{"text": ">> ","color":"gold","bold": true},{"selector": "@s","color":"gold"} , " 第一个到达了 ",{"text": "营地屋顶","color":"gold"}," 的目标点!"]
execute positioned 1009.50 14.50 1007.50 as @a[tag=!treasure1,team=playing,gamemode=!spectator,distance=..2] run tag @s add get_treasure
execute positioned 1009.50 14.50 1007.50 as @a[tag=!treasure1,team=playing,gamemode=!spectator,distance=..2] run tag @s add treasure1
execute positioned 1009.50 14.50 1007.50 run particle minecraft:crit ~ ~0.9 ~ 0.25 0.25 0.25 0.2 5 normal @a[tag=!treasure1]
execute positioned 1009.50 14.50 1007.50 run particle minecraft:totem_of_undying ~ ~0.9 ~ 0.2 0.2 0.2 0.2 2 normal @a[tag=treasure1]

execute positioned 1020.50 15.50 1016.50 as @a[tag=!treasure2,team=playing,gamemode=!spectator,distance=..2] unless entity @a[tag=treasure2] run tellraw @a ["",{"text": ">> ","color":"gold","bold": true},{"selector": "@s","color":"gold"} , " 第一个到达了 ",{"text": "沙漠骨骸","color":"gold"}," 的目标点!"]
execute positioned 1020.50 15.50 1016.50 as @a[tag=!treasure2,team=playing,gamemode=!spectator,distance=..2] run tag @s add get_treasure
execute positioned 1020.50 15.50 1016.50 as @a[tag=!treasure2,team=playing,gamemode=!spectator,distance=..2] run tag @s add treasure2
execute positioned 1020.50 15.50 1016.50 run particle minecraft:crit ~ ~0.9 ~ 0.25 0.25 0.25 0.2 5 normal @a[tag=!treasure2]
execute positioned 1020.50 15.50 1016.50 run particle minecraft:totem_of_undying ~ ~0.9 ~ 0.2 0.2 0.2 0.2 2 normal @a[tag=treasure2]

execute positioned 1008.50 30.50 1020.50 as @a[tag=!treasure3,team=playing,gamemode=!spectator,distance=..2] unless entity @a[tag=treasure3] run tellraw @a ["",{"text": ">> ","color":"gold","bold": true},{"selector": "@s","color":"gold"} , " 第一个到达了 ",{"text": "神庙立柱","color":"gold"}," 的目标点!"]
execute positioned 1008.50 30.50 1020.50 as @a[tag=!treasure3,team=playing,gamemode=!spectator,distance=..2] run tag @s add get_treasure
execute positioned 1008.50 30.50 1020.50 as @a[tag=!treasure3,team=playing,gamemode=!spectator,distance=..2] run tag @s add treasure3
execute positioned 1008.50 30.50 1020.50 run particle minecraft:crit ~ ~0.9 ~ 0.25 0.25 0.25 0.2 5 normal @a[tag=!treasure3]
execute positioned 1008.50 30.50 1020.50 run particle minecraft:totem_of_undying ~ ~0.9 ~ 0.2 0.2 0.2 0.2 2 normal @a[tag=treasure3]

execute positioned 1011.50 19.50 1058.50 as @a[tag=!treasure4,team=playing,gamemode=!spectator,distance=..2] unless entity @a[tag=treasure4] run tellraw @a ["",{"text": ">> ","color":"gold","bold": true},{"selector": "@s","color":"gold"} , " 第一个到达了 ",{"text": "下界之门","color":"gold"}," 的目标点!"]
execute positioned 1011.50 19.50 1058.50 as @a[tag=!treasure4,team=playing,gamemode=!spectator,distance=..2] run tag @s add get_treasure
execute positioned 1011.50 19.50 1058.50 as @a[tag=!treasure4,team=playing,gamemode=!spectator,distance=..2] run tag @s add treasure4
execute positioned 1011.50 19.50 1058.50 run particle minecraft:crit ~ ~0.9 ~ 0.25 0.25 0.25 0.2 5 normal @a[tag=!treasure4]
execute positioned 1011.50 19.50 1058.50 run particle minecraft:totem_of_undying ~ ~0.9 ~ 0.2 0.2 0.2 0.2 2 normal @a[tag=treasure4]

execute positioned 1026.50 18.50 1047.00 as @a[tag=!treasure5,team=playing,gamemode=!spectator,distance=..2] unless entity @a[tag=treasure5] run tellraw @a ["",{"text": ">> ","color":"gold","bold": true},{"selector": "@s","color":"gold"} , " 第一个到达了 ",{"text": "落日森林","color":"gold"}," 的目标点!"]
execute positioned 1026.50 18.50 1047.00 as @a[tag=!treasure5,team=playing,gamemode=!spectator,distance=..2] run tag @s add get_treasure
execute positioned 1026.50 18.50 1047.00 as @a[tag=!treasure5,team=playing,gamemode=!spectator,distance=..2] run tag @s add treasure5
execute positioned 1026.50 18.50 1047.00 run particle minecraft:crit ~ ~0.9 ~ 0.25 0.25 0.25 0.2 5 normal @a[tag=!treasure5]
execute positioned 1026.50 18.50 1047.00 run particle minecraft:totem_of_undying ~ ~0.9 ~ 0.2 0.2 0.2 0.2 2 normal @a[tag=treasure5]

execute positioned 1004.50 18.50 1043.50 as @a[tag=!treasure6,team=playing,gamemode=!spectator,distance=..2] unless entity @a[tag=treasure6] run tellraw @a ["",{"text": ">> ","color":"gold","bold": true},{"selector": "@s","color":"gold"} , " 第一个到达了 ",{"text": "地狱之顶","color":"gold"}," 的目标点!"]
execute positioned 1004.50 18.50 1043.50 as @a[tag=!treasure6,team=playing,gamemode=!spectator,distance=..2] run tag @s add get_treasure
execute positioned 1004.50 18.50 1043.50 as @a[tag=!treasure6,team=playing,gamemode=!spectator,distance=..2] run tag @s add treasure6
execute positioned 1004.50 18.50 1043.50 run particle minecraft:crit ~ ~0.9 ~ 0.25 0.25 0.25 0.2 5 normal @a[tag=!treasure6]
execute positioned 1004.50 18.50 1043.50 run particle minecraft:totem_of_undying ~ ~0.9 ~ 0.2 0.2 0.2 0.2 2 normal @a[tag=treasure6]

execute positioned 1013.00 08.50 1041.00 as @a[tag=!treasure7,team=playing,gamemode=!spectator,distance=..2] unless entity @a[tag=treasure7] run tellraw @a ["",{"text": ">> ","color":"gold","bold": true},{"selector": "@s","color":"gold"} , " 第一个到达了 ",{"text": "节奏舞厅","color":"gold"}," 的目标点!"]
execute positioned 1013.00 08.50 1041.00 as @a[tag=!treasure7,team=playing,gamemode=!spectator,distance=..2] run tag @s add get_treasure
execute positioned 1013.00 08.50 1041.00 as @a[tag=!treasure7,team=playing,gamemode=!spectator,distance=..2] run tag @s add treasure7
execute positioned 1013.00 08.50 1041.00 run particle minecraft:crit ~ ~0.9 ~ 0.25 0.25 0.25 0.2 5 normal @a[tag=!treasure7]
execute positioned 1013.00 08.50 1041.00 run particle minecraft:totem_of_undying ~ ~0.9 ~ 0.2 0.2 0.2 0.2 2 normal @a[tag=treasure7]

execute positioned 1007.50 13.50 1025.50 as @a[tag=!treasure8,team=playing,gamemode=!spectator,distance=..2] unless entity @a[tag=treasure8] run tellraw @a ["",{"text": ">> ","color":"gold","bold": true},{"selector": "@s","color":"gold"} , " 第一个到达了 ",{"text": "末路营火","color":"gold"}," 的目标点!"]
execute positioned 1007.50 13.50 1025.50 as @a[tag=!treasure8,team=playing,gamemode=!spectator,distance=..2] run tag @s add get_treasure
execute positioned 1007.50 13.50 1025.50 as @a[tag=!treasure8,team=playing,gamemode=!spectator,distance=..2] run tag @s add treasure8
execute positioned 1007.50 13.50 1025.50 run particle minecraft:crit ~ ~0.9 ~ 0.25 0.25 0.25 0.2 5 normal @a[tag=!treasure8]
execute positioned 1007.50 13.50 1025.50 run particle minecraft:totem_of_undying ~ ~0.9 ~ 0.2 0.2 0.2 0.2 2 normal @a[tag=treasure8]

execute positioned 1024.50 29.50 1038.50 as @a[tag=!treasure9,team=playing,gamemode=!spectator,distance=..2] unless entity @a[tag=treasure9] run tellraw @a ["",{"text": ">> ","color":"gold","bold": true},{"selector": "@s","color":"gold"} , " 第一个到达了 ",{"text": "活塞平台","color":"gold"}," 的目标点!"]
execute positioned 1024.50 29.50 1038.50 as @a[tag=!treasure9,team=playing,gamemode=!spectator,distance=..2] run tag @s add get_treasure
execute positioned 1024.50 29.50 1038.50 as @a[tag=!treasure9,team=playing,gamemode=!spectator,distance=..2] run tag @s add treasure9
execute positioned 1024.50 29.50 1038.50 run particle minecraft:crit ~ ~0.9 ~ 0.25 0.25 0.25 0.2 5 normal @a[tag=!treasure9]
execute positioned 1024.50 29.50 1038.50 run particle minecraft:totem_of_undying ~ ~0.9 ~ 0.2 0.2 0.2 0.2 2 normal @a[tag=treasure9]

execute positioned 1014.50 19.50 1024.50 as @a[tag=!treasure10,team=playing,gamemode=!spectator,distance=..2] unless entity @a[tag=treasure10] run tellraw @a ["",{"text": ">> ","color":"gold","bold": true},{"selector": "@s","color":"gold"} , " 第一个到达了 ",{"text": "沙漠密室","color":"gold"}," 的目标点!"]
execute positioned 1014.50 19.50 1024.50 as @a[tag=!treasure10,team=playing,gamemode=!spectator,distance=..2] run tag @s add get_treasure
execute positioned 1014.50 19.50 1024.50 as @a[tag=!treasure10,team=playing,gamemode=!spectator,distance=..2] run tag @s add treasure10
execute positioned 1014.50 19.50 1024.50 run particle minecraft:crit ~ ~0.9 ~ 0.25 0.25 0.25 0.2 5 normal @a[tag=!treasure10]
execute positioned 1014.50 19.50 1024.50 run particle minecraft:totem_of_undying ~ ~0.9 ~ 0.2 0.2 0.2 0.2 2 normal @a[tag=treasure10]

scoreboard players add @a[tag=get_treasure] treasure 1
tellraw @a[tag=get_treasure,scores={treasure=..9}] ["",{"text":">> ","color":"green","bold": true},"你已到达 ",{"score": {"objective": "treasure","name": "*"},"color":"green"},{"text": " 个 ","color":"green"},"目标点!"]
execute as @a[tag=get_treasure,scores={treasure=10}] run function mini:parkour_old/player_finished
execute as @a[tag=get_treasure] at @s run function lib:sounds/levelup

execute as @a[tag=get_treasure] if score @s treasure matches 5 run advancement grant @s only ltw:parkour/parkour1
execute as @a[tag=get_treasure] if score @s treasure matches 10 run advancement grant @s only ltw:parkour/parkour2
execute as @a[tag=get_treasure] if score @s treasure matches 10 if score $countdown mem matches 40.. run advancement grant @s only ltw:parkour/parkour3
execute as @a[tag=get_treasure] if score @s treasure matches 10 if score $countdown mem matches 60.. run advancement grant @s only ltw:parkour/parkour4