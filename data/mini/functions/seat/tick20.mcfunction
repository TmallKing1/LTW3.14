# 矿车随机移动（幻境干扰）
execute if score $ley_line_disorder mem matches 1 unless score $countdown_fast mem = $countdown_max mem as @e[type=minecart,tag=seat_mc] at @s run function mini:seat/game/mc_move

# 判断是否符合刷出新物品的条件：0 为可以，其他为不可以
scoreboard players set #new_item mem 0

# 当前场地上没有物品
execute if entity @e[tag=bonus_item,x=1000,y=0,z=10000,dx=100,dy=1000,dz=100] run scoreboard players set #new_item mem 1

# 如果没有物品，则计算冷却
execute if score #new_item mem matches 0 run scoreboard players add $new_item_cd mem 1
# 已经超过 20s 冷却时间
execute if score $new_item_cd mem matches ..19 run scoreboard players set #new_item mem 1

# 存活玩家数（$player_alive）>= 3
execute if score $player_alive mem matches ..2 run scoreboard players set #new_item mem 1
# 死亡玩家数（$player_finish）<= 2
execute if score $player_finish mem matches 3.. run scoreboard players set #new_item mem 1
# 不在加时赛中
execute if score $extra_time mem matches 1 run scoreboard players set #new_item mem 1

# 如果上述条件均满足，则刷出新物品
execute if score #new_item mem matches 0 run function mini:seat/game/new_item