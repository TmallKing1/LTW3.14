# 游戏结束，根据 total_score 判断排名，并返回主大厅

# 计算排名
tag @a remove total_rank1
tag @a remove total_rank2
tag @a remove total_rank3
tag @a remove total_rankl
# 1
function ltw:main/get_max_score
execute as @a if score @s total_score = #score_max mem run tag @s add total_rank1
tag @a[tag=total_rank1] add max_uncounted
# 2
function ltw:main/get_max_score
execute as @a[tag=!max_uncounted] if score @s total_score = #score_max mem run tag @s add total_rank2
tag @a[tag=total_rank2] add max_uncounted
# 3
function ltw:main/get_max_score
execute as @a[tag=!max_uncounted] if score @s total_score = #score_max mem run tag @s add total_rank3
tag @a[tag=max_uncounted] remove max_uncounted
# 最低分
scoreboard players set #score_min mem 2147483647
scoreboard players operation #score_min mem < @a[team=playing] total_score
execute as @a if score @s total_score = #score_min mem run tag @s add total_rankl
# 没有名次
tag @a[team=playing,tag=!total_rank1,tag=!total_rank2,tag=!total_rank3] add total_rankl

# 给予进度
execute unless score $test_mode mem matches 1 run scoreboard players add @a[team=playing] stat_total 1
execute unless score $test_mode mem matches 1 run scoreboard players add @a[tag=total_rank1] stat_win 1

# 显示排名
tellraw @a ["",{"text":"\n------  ","color":"light_purple","bold":true},{"text": "全场游戏结束！","color": "light_purple","bold": true},{"text": " ------\n ","color": "light_purple","bold": true}]
tellraw @a ["  ",{"text": "第一名 >  ","color":"red"},{"selector": "@a[tag=total_rank1]","color":"red"},{"text":" (","color":"gray"},{"score":{"name": "@p[tag=total_rank1]","objective": "total_score"},"color":"gray"},{"text":")","color":"gray"}]
execute if entity @a[tag=total_rank2] run tellraw @a ["  ",{"text": "第二名 >  ","color":"gold"},{"selector": "@a[tag=total_rank2]","color":"gold"},{"text":" (","color":"gray"},{"score":{"name": "@p[tag=total_rank2]","objective": "total_score"},"color":"gray"},{"text":")","color":"gray"}]
execute if entity @a[tag=total_rank3] run tellraw @a ["  ",{"text": "第三名 >  ","color":"yellow"},{"selector": "@a[tag=total_rank3]","color":"yellow"},{"text":" (","color":"gray"},{"score":{"name": "@p[tag=total_rank3]","objective": "total_score"},"color":"gray"},{"text":")","color":"gray"}]
tellraw @a ""

# 若非测试模式，则给予金粒
execute unless score $test_mode mem matches 1 run function ltw:main/give_gold_nuggets

# 若为测试模式，则显示提示
execute if score $test_mode mem matches 1 run tellraw @a " 本局为测试局，没有奖励！"

# 奖励结束
tellraw @a[team=playing] ""
#execute unless score $force_end mem matches 1 as @a[tag=double_reward,team=playing] run tellraw @s ["",{"text": ">> ","color": "green","bold": true},{"text": "已激活「黎明盛会」双倍奖励次数，当前剩余 ","color": "green"},{"score": {"name": "*","objective": "double_reward"},"color": "green"},{"text": " 次！","color": "green"}]
scoreboard players set $force_end mem 0

# 返回主大厅
schedule function ltw:state/0/state_enter 2t replace
execute as @a at @s run function lib:sounds/theend
forceload remove all
forceload add 0 0
forceload add 0 1900 50 2000
forceload add -32 -17 45 -80
forceload add 997 -976 949 -1024
