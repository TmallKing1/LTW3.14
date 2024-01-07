#tellraw @a[tag=pass_setup] [{"text":"","color":"green"},{"text": ">> ","bold": true},{"text": "游戏即将开始, 请使用快捷栏最后一格确定自己是否参与!"}]
scoreboard players set #start_actionbar mem 8
execute as @a at @s run function lib:sounds/levelup
bossbar set ltw:waiting color green

# 动态倒计时
execute if score #total_count mem matches 3..4 run scoreboard players set #start_countdown mem 121
execute if score #total_count mem matches 5 run scoreboard players set #start_countdown mem 161
execute if score #total_count mem matches 6 run scoreboard players set #start_countdown mem 201
execute if score #total_count mem matches 7 run scoreboard players set #start_countdown mem 221
execute if score #total_count mem matches 8.. run scoreboard players set #start_countdown mem 241
execute store result bossbar ltw:waiting max run scoreboard players get #start_countdown mem