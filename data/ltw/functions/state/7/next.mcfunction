# 选取下一轮选择的人群

tag @a remove new_selector

execute unless entity @a[tag=new_selector] run tag @a[tag=mini_rank1] add new_selector
execute if entity @a[tag=mini_rank1,tag=new_selector] run tellraw @a[tag=!new_selector] ["",{"text": ">> ","color":"gold","bold": true},"轮到第一名 ",{"selector": "@a[tag=new_selector]","color":"gold"}," 选择奖励了！"]

execute unless entity @a[tag=new_selector] run tag @a[tag=mini_rank2] add new_selector
execute if entity @a[tag=mini_rank2,tag=new_selector] run tellraw @a[tag=!new_selector] ["",{"text": ">> ","color":"gold","bold": true},"轮到第二名 ",{"selector": "@a[tag=new_selector]","color":"gold"}," 选择奖励了！"]

execute unless entity @a[tag=new_selector] run tag @a[tag=mini_rank3] add new_selector
execute if entity @a[tag=mini_rank3,tag=new_selector] run tellraw @a[tag=!new_selector] ["",{"text": ">> ","color":"gold","bold": true},"轮到第三名 ",{"selector": "@a[tag=new_selector]","color":"gold"}," 选择奖励了！"]

execute unless entity @a[tag=new_selector] run tag @a[tag=mini_rank4] add new_selector
execute if entity @a[tag=mini_rank4,tag=new_selector] run tellraw @a[tag=!new_selector] ["",{"text": ">> ","color":"gold","bold": true},{"text":"轮到其他人选择奖励了!","color":"gold"}]

execute unless entity @a[tag=new_selector] if entity @a[tag=selecting] run tellraw @a ["",{"text": ">> ","color":"red","bold": true},{"selector": "@a[tag=selecting]","color":"red"}," 未选择奖励……"]

# 非第一个
scoreboard players set $first_selection mem 0

# 清除「取消选择」屏障
clear @a[tag=selecting] barrier

# 以玩家为对象开始执行
execute as @a[tag=new_selector] run function ltw:state/7/next2
execute unless entity @a[tag=new_selector] unless score $double_reward mem matches 1 if score $round mem matches 6.. run function ltw:main/game_end
execute unless entity @a[tag=new_selector] unless score $double_reward mem matches 1 if score $round mem matches ..5 run function ltw:state/7/continue_gameparty

# 初始化倒计时与 HUD
scoreboard players set $countdown mem 10
execute unless entity @a[tag=new_selector] if score $double_reward mem matches 1 run function ltw:state/7/double_reward

# 播放音效
execute as @a[tag=new_selector] at @s run function lib:sounds/hit
execute if entity @a[tag=new_selector] as @a[tag=!new_selector] at @s run function lib:sounds/hit2
