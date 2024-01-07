# 传送已通关玩家并清空已占据的矿车
tp @a[tag=mini_running,tag=in_minecart] 1016.0 27 10016.0
tag @a[tag=mini_running,tag=in_minecart] add seat_waiting
kill @e[type=minecart,tag=occupied]

# 告知玩家加时赛信息
tellraw @a ["",{"text":">> ","color":"red","bold": true},{"text":"仍有未被占据的矿车，现在进入加时赛！","color": "red"}]

# 设置加时赛状态
scoreboard players set $extra_time mem 1
scoreboard players set $bossbar_color mem 1

# 更新时间 (10 秒)
scoreboard players set $countdown_fast mem 100
scoreboard players operation $countdown_max mem = $countdown_fast mem
function lib:bossbar/show

# 设置物品可拾取状态
execute as @e[type=item] run data modify entity @s PickupDelay set value 32767

# 声音
execute as @a at @s run function lib:sounds/error