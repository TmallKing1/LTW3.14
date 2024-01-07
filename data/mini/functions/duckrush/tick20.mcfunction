# 剩余时间显示
execute if score $countdown_second mem matches 10.. run bossbar set mini:green name ["剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "green"},{"text": ":","color": "green"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "green"},"]"]
execute unless score $countdown_second mem matches 10.. run bossbar set mini:green name ["剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "green"},{"text": ":0","color": "green"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "green"},"]"]

# 判断是否符合刷出新物品的条件：0 为可以，其他为不可以
scoreboard players set #new_item mem 0
# 当前场地上没有奖励鸭子
execute if entity @e[tag=bonus_duck] run scoreboard players set #new_item mem 1
# 如果没有物品，则计算冷却
execute if score #new_item mem matches 0 run scoreboard players add $new_item_cd mem 1
# 已经超过 10s 冷却时间
execute if score $new_item_cd mem matches ..9 run scoreboard players set #new_item mem 1

# 每秒生成一只鸭子
function mini:duckrush/game/summon_duck

# 减少无敌时间
scoreboard players remove @a[scores={countdown_invulnerable=0..}] countdown_invulnerable 1
title @a[scores={countdown_invulnerable=1..}] actionbar [{"text": "无敌时间剩余 ","color": "green"},{"score":{"name": "*","objective": "countdown_invulnerable"},"color": "gold"},{"text": " 秒","color": "green"}]
title @a[scores={countdown_invulnerable=0}] actionbar [{"text": "你已不再无敌","color": "red"}]