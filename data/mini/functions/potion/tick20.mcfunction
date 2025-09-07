# 剩余时间显示
execute if score $countdown_second mem matches 10.. run bossbar set mini:green name ["剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "green"},{"text": ":","color": "green"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "green"},"]"]
execute unless score $countdown_second mem matches 10.. run bossbar set mini:green name ["剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "green"},{"text": ":0","color": "green"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "green"},"]"]

# 60s：教学
execute if score $countdown mem matches 60 run tellraw @a[team=playing,scores={stat_level=..10}] [{"text":"\n>> ","color":"light_purple","bold": true},{"text":"提示：将药水抛向玩家的头部可造成更高伤害！","bold":false},"\n "]

# -----------------------
#   物品生成
# -----------------------

# 判断是否符合刷出新物品的条件：0 为可以，其他为不可以
scoreboard players set #new_item mem 0

# 当前场地上没有物品
execute if entity @e[tag=bonus_item,x=2000,y=0,z=4000,dx=100,dy=1000,dz=100] run scoreboard players set #new_item mem 1

# 如果没有物品，则计算冷却
execute if score #new_item mem matches 0 run scoreboard players add $new_item_cd mem 1
# 已经超过 15s 冷却时间
execute if score $new_item_cd mem matches ..14 run scoreboard players set #new_item mem 1

# 如果上述条件均满足，则刷出新物品
execute if score #new_item mem matches 0 run function mini:potion/game/new_item

# 游戏结束判定
execute if score $countdown mem matches 0 run function mini:main/game_end