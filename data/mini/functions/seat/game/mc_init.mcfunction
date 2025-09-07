# 计算应有矿车数量
scoreboard players operation $minecart_count mem = $player_alive mem
execute if score $player_alive mem matches 6..8 run scoreboard players remove $minecart_count mem 2
execute if score $player_alive mem matches 1..5 run scoreboard players remove $minecart_count mem 1

# 告知玩家
tellraw @a ["",{"text":">> ","color":"gold","bold": true},"新的一轮开始了，本轮矿车数量为 ",{"score":{"objective": "mem","name": "$minecart_count"},"color":"gold"},"！"]

# 生成矿车
function mini:seat/game/mc_spawn
spreadplayers 1016.0 10016.0 0 10 under 18 false @e[type=minecart,tag=seat_mc]
schedule function mini:seat/game/mc_teleport 1t

# 传送等待的玩家与出界玩家
tp @a[tag=seat_waiting] 1016.0 11 10016.0
execute as @a[tag=mini_running,x=1027,y=0,z=10001,dx=3,dy=13,dz=29] at @s unless block ~ 10 ~ iron_block run tp @s 1025.5 11.5 ~
execute as @a[tag=mini_running,x=1001,y=0,z=10001,dx=29,dy=13,dz=3] at @s unless block ~ 10 ~ iron_block run tp @s ~ 11.5 10006.5
execute as @a[tag=mini_running,x=1001,y=0,z=10001,dx=3,dy=13,dz=29] at @s unless block ~ 10 ~ iron_block run tp @s 1006.5 11.5 ~
execute as @a[tag=mini_running,x=1001,y=0,z=10027,dx=29,dy=13,dz=3] at @s unless block ~ 10 ~ iron_block run tp @s ~ 11.5 10025.5
execute as @a[tag=mini_running,x=1001,y=0,z=10001,dx=29,dy=10.9,dz=29] at @s run tp @s ~ 11.5 ~

# 清除玩家标签与失衡值
tag @a remove in_minecart
tag @a remove seat_waiting
tag @a remove mc_angry
scoreboard players reset * shiheng

# 设置普通赛状态
scoreboard players set $extra_time mem 0
execute as @e[type=item] run data modify entity @s PickupDelay set value 0
scoreboard players set $bossbar_color mem 3

# 普通赛限制时间 = 存活人数 * 1 + 4（秒）
scoreboard players set $countdown_fast mem 40
execute as @a[tag=mini_running] run scoreboard players add $countdown_fast mem 10
scoreboard players operation $countdown_max mem = $countdown_fast mem
function lib:bossbar/show

# 声音
execute as @a at @s run function lib:sounds/hit