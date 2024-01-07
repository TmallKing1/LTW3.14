# 检测矿车
tag @a[tag=mini_running] remove in_minecart
tag @e[type=minecart,tag=seat_mc] remove occupied
execute as @a[tag=mini_running] if data entity @s RootVehicle.Entity{Tags: ["seat_mc"]} run tag @s add in_minecart
execute as @a[tag=in_minecart] at @s run execute as @e[type=minecart,distance=..2,sort=nearest,limit=1,tag=seat_mc] run tag @s add occupied

# 时间到（非加时赛）
execute if score $countdown_fast mem matches 0 if score $extra_time mem matches 0 run function mini:seat/game/check_round_end

# 非加时赛检测并调整矿车数量
execute if score $extra_time mem matches 0 run function mini:seat/game/mc_adjust_count

# 加时赛检测占据矿车的玩家
execute if score $extra_time mem matches 1 as @a[tag=in_minecart] at @s run function mini:seat/game/extra_time_player_win

# 加时赛检测矿车数量为零或存活玩家数量为零
execute if score $extra_time mem matches 1 unless entity @e[type=minecart,tag=seat_mc] run function mini:seat/game/round_end
execute if score $extra_time mem matches 1 unless entity @a[tag=!seat_waiting] run function mini:seat/game/round_end

# 时间到（加时赛）
execute if score $countdown_fast mem matches 0 if score $extra_time mem matches 1 run function mini:seat/game/round_end

# 检测掉入虚空的玩家
execute as @a[x=1000,y=-64,z=10000,dx=32,dy=64,dz=32,tag=mini_running] run function mini:seat/game/player_fall_void

# 检测掉入虚空的矿车并使其重回平台
execute as @e[x=1000,y=-64,z=10000,dx=32,dy=66,dz=32,tag=seat_mc] run spreadplayers 1016.0 10016.0 0 12 under 18 false @s

# 检测存活玩家数为零
execute unless entity @a[tag=!seat_waiting] run function mini:seat/game/round_end

# 暂时性修复
execute as @e[x=1000,y=20,z=10000,dx=32,dy=32,dz=32,type=minecart,tag=seat_mc] at @s run tp @s ~ 11 ~

# HUD
bossbar set mini:green name [{"text": "本轮剩余时间"}," [",{"score":{"name": "$countdown_fast_second","objective": "mem"},"color": "green"},{"text": ".","color": "green"},{"score":{"name": "$countdown_fast_100ms","objective": "mem"},"color": "green"},"]"]
bossbar set mini:red name [{"text": "加时赛"}," [",{"score":{"name": "$countdown_fast_second","objective": "mem"},"color": "red"},{"text": ".","color": "red"},{"score":{"name": "$countdown_fast_100ms","objective": "mem"},"color": "red"},"]"]
