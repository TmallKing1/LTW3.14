# 判断是否符合刷出新物品的条件：0 为可以，其他为不可以
scoreboard players set #new_item mem 0

# 当前场地上没有物品
execute if entity @e[tag=bonus_item,x=1000,y=5.0,z=16000.0,dx=32,dy=32,dz=32] run scoreboard players set #new_item mem 1

# 当前场地上没有奖励物资(speci)
execute if entity @e[tag=speci_mats] run scoreboard players set #new_item mem 1

# 当前场地上没有持有奖励物资的玩家
execute if entity @a[tag=has_mats_speci] run scoreboard players set #new_item mem 1

# 如果没有物品，则计算冷却
execute if score #new_item mem matches 0 run scoreboard players add $new_item_cd mem 1
# 已经超过 15s 冷却时间
execute if score $new_item_cd mem matches ..14 run scoreboard players set #new_item mem 1

# 如果上述条件均满足，则刷出新物品
execute if score #new_item mem matches 0 run function mini:river/game/new_speci

# 显示剩余时间 Bossbar
execute if score $countdown_second mem matches 10.. run bossbar set mini:blue name ["剩余时间 [",{"score":{"name": "$countdown_second","objective": "mem"},"color": "aqua"},{"text": "/","color": "aqua"},{"score":{"name": "$countdown_max","objective": "mem"},"color": "aqua"},"]"]
execute unless score $countdown_second mem matches 10.. run bossbar set mini:blue name ["剩余时间 [",{"score":{"name": "$countdown_second","objective": "mem"},"color": "aqua"},{"text": "/","color": "aqua"},{"score":{"name": "$countdown_max","objective": "mem"},"color": "aqua"},"]"]

# 显示倒计时
execute if score $countdown mem matches ..10 run title @a times 3t 14t 2t
execute if score $countdown mem matches ..10 run title @a subtitle {"score":{"name":"$countdown","objective":"mem"}}
execute if score $countdown mem matches ..10 run title @a title [""]
execute if score $countdown mem matches ..10 as @a at @s run function lib:sounds/hit2

# 0s：游戏结束
execute if score $countdown mem matches 0 run function mini:main/game_end

# 重置旁观者分数
scoreboard players reset @a[team=!playing] tran_mats