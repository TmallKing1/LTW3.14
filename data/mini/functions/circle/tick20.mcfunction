# 剩余时间显示
execute if score $countdown_second mem matches 10.. run bossbar set mini:blue name ["剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "aqua"},{"text": ":","color": "aqua"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "aqua"},"]"]
execute unless score $countdown_second mem matches 10.. run bossbar set mini:blue name ["剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "aqua"},{"text": ":0","color": "aqua"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "aqua"},"]"]

# 干掉虚空里的玩家
scoreboard players set @a[gamemode=!spectator,x=0,y=4,z=16000,dx=2000,dy=-100,dz=2000] last_damage_type 5
kill @a[gamemode=!spectator,x=0,y=4,z=16000,dx=2000,dy=-100,dz=2000]

# 显示倒计时
execute if score $countdown mem matches ..10 run title @a times 3t 14t 2t
execute if score $countdown mem matches ..10 run title @a subtitle {"score":{"name":"$countdown","objective":"mem"}}
execute if score $countdown mem matches ..10 run title @a title [""]
execute if score $countdown mem matches ..10 as @a at @s run function lib:sounds/hit2

# 0s：游戏结束
execute if score $countdown mem matches 0 run function mini:main/game_end

# -----------------------
#   物品生成
# -----------------------

# 判断是否符合刷出新物品的条件：0 为可以，其他为不可以
scoreboard players set #new_item mem 0

# 当前场地上没有物品
execute if entity @e[tag=bonus_item,x=0,y=0,z=16000,dx=2000,dy=1000,dz=2000] run scoreboard players set #new_item mem 1

# 如果没有物品，则计算冷却
execute if score #new_item mem matches 0 run scoreboard players add $new_item_cd mem 1
# 已经超过 20s 冷却时间
execute if score $new_item_cd mem matches ..19 run scoreboard players set #new_item mem 1

# 如果上述条件均满足，则刷出新物品
execute if score #new_item mem matches 0 run function mini:circle/game/new_item


# 每四秒生成两只美西螈
execute if score $foursec mem matches 0 run function mini:circle/game/try_summon