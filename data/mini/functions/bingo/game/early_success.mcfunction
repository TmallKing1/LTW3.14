# 加分
scoreboard players add @s mini_score 114

# 计算时间并给予进度
scoreboard players set #temp mem 300
scoreboard players operation #temp mem -= $countdown mem
execute if score #temp mem matches 1..150 run advancement grant @s only ltw:vs/bingo1
execute if score #temp mem matches 1..120 run advancement grant @s only ltw:vs/bingo2
execute if score #temp mem matches 1..75 run advancement grant @s only ltw:vs/bingo3
execute if score @s quest_complete matches 7.. run advancement grant @s only ltw:vs/bingo4

# 完成
tag @s add bingo_finished
function mini:main/player_finished