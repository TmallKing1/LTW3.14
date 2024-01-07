
# 60s：教学
execute if score $countdown mem matches 60 run tellraw @a[team=playing,scores={green_total=..10}] [{"text":"\n>> ","color":"light_purple","bold": true},{"text":"提示：如果有近战武器，或许可以冲进幻翼群里直接近战……","bold":false},"\n "]

# 给予进度
execute as @a[team=playing,scores={temp=1..,kill_phantom=8..17}] run advancement grant @s only ltw:blood/phantom1
execute as @a[team=playing,scores={temp=1..,kill_phantom=18..27}] run advancement grant @s only ltw:blood/phantom2
execute as @a[team=playing,scores={temp=1..,kill_phantom=28..34}] run advancement grant @s only ltw:blood/phantom3
execute as @a[team=playing,scores={temp=1..,kill_phantom=35..40}] run advancement grant @s only ltw:blood/phantom4

# 判断是否符合刷出新物品的条件：0 为可以，其他为不可以
scoreboard players set #new_item mem 0
# 当前场地上没有奖励幻翼
execute if entity @e[tag=bonus_phantom] run scoreboard players set #new_item mem 1
# 如果没有物品，则计算冷却
execute if score #new_item mem matches 0 run scoreboard players add $new_item_cd mem 1
# 已经超过 10s 冷却时间
execute if score $new_item_cd mem matches ..9 run scoreboard players set #new_item mem 1

# 召唤幻翼
execute if score $countdown mem matches 11.. run function mini:phantom/game/try_summon

# 显示剩余时间 Bossbar
execute if score $countdown_second mem matches 10.. run bossbar set mini:blue name ["剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "aqua"},{"text": ":","color": "aqua"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "aqua"},"]"]
execute unless score $countdown_second mem matches 10.. run bossbar set mini:blue name ["剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "aqua"},{"text": ":0","color": "aqua"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "aqua"},"]"]

# 显示倒计时
execute if score $countdown mem matches ..10 run title @a times 3t 14t 2t
execute if score $countdown mem matches ..10 run title @a subtitle {"score":{"name":"$countdown","objective":"mem"}}
execute if score $countdown mem matches ..10 run title @a title [""]
execute if score $countdown mem matches ..10 as @a at @s run function lib:sounds/hit2

# 0s：游戏结束
execute if score $countdown mem matches 0 run function mini:main/game_end

# 回复生命值
execute if score $foursec mem matches 1 unless score $ley_line_disorder mem matches 2 run effect give @a[team=playing] regeneration 1 10 true
execute if score $foursec mem matches 1 unless score $ley_line_disorder mem matches 2 run schedule function mini:phantom/game/clear_effect 1t replace

# 绿宝石块回血
execute if score $ley_line_disorder mem matches 2 as @a[tag=mini_running] at @s if block ~ ~-0.2 ~ emerald_block run effect give @s regeneration 2 2