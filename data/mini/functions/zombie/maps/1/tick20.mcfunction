# 显示提示
execute if score $zombie_stage mem matches 1 if score $countdown mem matches 20 run tellraw @a[team=playing,scores={green_total=..10}] [{"text":"\n>> ","color":"light_purple","bold": true},{"text":"提示：僵尸也会受到来自水的伤害！尝试利用这一特性快速击败它们吧。","bold":false},"\n "]

# 水中生物处理
execute as @a at @s if block ~ ~ ~ water run effect give @s instant_damage 1 1
execute as @e[type=zombie] at @s if block ~ ~ ~ water run effect give @s instant_health 1 1

# 判断是否符合刷出新物品的条件：0 为可以，其他为不可以
scoreboard players set #new_item mem 0

# 当前场地上没有物品
execute if entity @e[tag=bonus_item,x=1000,y=0,z=12000,dx=100,dy=1000,dz=100] run scoreboard players set #new_item mem 1

# 如果没有物品，则计算冷却
execute if score #new_item mem matches 0 run scoreboard players add $new_item_cd mem 1
# 已经超过 10s 冷却时间
execute if score $new_item_cd mem matches ..9 run scoreboard players set #new_item mem 1

# 存活玩家数（$player_alive）>= 3
execute if score $player_alive mem matches ..2 run scoreboard players set #new_item mem 1
# 死亡玩家数（$player_finish）<= 2
execute if score $player_finish mem matches 3.. run scoreboard players set #new_item mem 1

# 如果上述条件均满足，则刷出新物品
execute if score #new_item mem matches 0 run function mini:zombie/game/new_item
