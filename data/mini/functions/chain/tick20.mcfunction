# 干掉虚空里的玩家
tag @a[team=!debugging,gamemode=!spectator,x=0,y=4,z=16000,dx=2000,dy=-100,dz=2000] add void
execute if entity @a[tag=void] run tellraw @a ["",{"text": ">> ","color": "gold","bold": true},{"selector": "@a[tag=void]","color": "gold"},{"text": " 掉入了虚空！"}]
execute as @a[tag=void] at @s run function mini:main/player_lose_heart
spreadplayers 999.0 17048.0 0 10 false @a[tag=void]
tag @a remove void

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