# 给予红区玩家能量值
#execute if score $ley_line_disorder mem matches 1 if score $countdown mem matches 61.. as @a[team=playing,tag=mini_running] at @s if block ~ 9 ~ red_concrete run scoreboard players add @s power_count 1
#execute if score $ley_line_disorder mem matches 1 if score $countdown mem matches ..60 as @a[team=playing,tag=mini_running] at @s if block ~ 9 ~ red_concrete run scoreboard players add @s power_count 2
execute if score $ley_line_disorder mem matches 1 if score $countdown mem matches 61.. as @a[team=playing,tag=mini_running] at @s if block ~ 9 ~ red_mushroom_block run scoreboard players add @s power_count 1
execute if score $ley_line_disorder mem matches 1 if score $countdown mem matches ..60 as @a[team=playing,tag=mini_running] at @s if block ~ 9 ~ red_mushroom_block run scoreboard players add @s power_count 2

# 判断是否符合刷出新物品的条件：0 为可以，其他为不可以
scoreboard players set #new_item mem 0

# 当前场地上没有物品
execute if entity @e[tag=bonus_item,x=985.0,y=4.0,z=8985.0,dx=32,dy=32,dz=32] run scoreboard players set #new_item mem 1

# 如果没有物品，则计算冷却
execute if score #new_item mem matches 0 run scoreboard players add $new_item_cd mem 1
# 已经超过 15s 冷却时间
execute if score $new_item_cd mem matches ..14 run scoreboard players set #new_item mem 1

# 如果上述条件均满足，则刷出新物品
execute if score #new_item mem matches 0 run function mini:koth/game/new_item

# 90s：双倍提示
execute if score $countdown mem matches 90 run title @a subtitle {"text":"⚠ 双倍能量将在三十秒后开启！ ⚠","color":"yellow"}
execute if score $countdown mem matches 90 run title @a times 1t 90t 3t
execute if score $countdown mem matches 90 run title @a title ""
execute if score $countdown mem matches 90 run scoreboard players set $bossbar_color mem 2
execute if score $countdown mem matches 90 run function lib:bossbar/show

# 60s：双倍开启
execute if score $countdown mem matches 61 as @a run function lib:sounds/music/mini_fast
execute if score $countdown mem matches 60 run title @a subtitle {"text":"⚠ 双倍能量已开启！ ⚠","color":"red"}
execute if score $countdown mem matches 60 run title @a times 1t 120t 3t
execute if score $countdown mem matches 60 run title @a title ""
execute if score $countdown mem matches 60 run scoreboard players set $bossbar_color mem 1
execute if score $countdown mem matches 60 run function lib:bossbar/show
execute if score $countdown mem matches 60 run playsound minecraft:entity.ender_dragon.growl player @a 0 900000 0 900000 1.5

# 显示剩余时间 Bossbar
execute if score $countdown_second mem matches 10.. run bossbar set mini:red name ["剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "red"},{"text": ":","color": "red"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "red"},"]"]
execute if score $countdown_second mem matches 10.. run bossbar set mini:yellow name ["剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "yellow"},{"text": ":","color": "yellow"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "yellow"},"]"]
execute if score $countdown_second mem matches 10.. run bossbar set mini:blue name ["剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "aqua"},{"text": ":","color": "aqua"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "aqua"},"]"]
execute unless score $countdown_second mem matches 10.. run bossbar set mini:red name ["剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "red"},{"text": ":0","color": "red"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "red"},"]"]
execute unless score $countdown_second mem matches 10.. run bossbar set mini:yellow name ["剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "yellow"},{"text": ":0","color": "yellow"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "yellow"},"]"]
execute unless score $countdown_second mem matches 10.. run bossbar set mini:blue name ["剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "aqua"},{"text": ":0","color": "aqua"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "aqua"},"]"]

# 显示倒计时
execute if score $countdown mem matches ..10 run title @a times 3t 14t 2t
execute if score $countdown mem matches ..10 run title @a subtitle {"score":{"name":"$countdown","objective":"mem"}}
execute if score $countdown mem matches ..10 run title @a title [""]
execute if score $countdown mem matches ..10 as @a at @s run function lib:sounds/hit2

# 0s：游戏结束
execute if score $countdown mem matches 0 run function mini:main/game_end

# 重置旁观者分数
scoreboard players reset @a[team=!playing] power_count