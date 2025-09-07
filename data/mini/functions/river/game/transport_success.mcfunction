# 根据携带物资种类执行操作
execute if entity @s[tag=has_mats_basic] run function lib:sounds/levelup
execute if entity @s[tag=has_mats_basic] run tellraw @a ["",{"text": ">> ","color": "gold","bold": true},{"selector": "@s","color": "gold"}," 已成功运送物资！"]
execute if entity @s[tag=has_mats_basic] run function mini:river/game/transport_success2
execute if entity @s[tag=has_mats_basic] run scoreboard players add @s tran_mats 1
execute if entity @s[tag=has_mats_basic] if score $timer_max mem matches ..10 run scoreboard players add @s tran_mats_ex 1
execute if entity @s[tag=has_mats_speci] positioned ~ ~3 ~ run function mini:river/game/new_item

# 给予进度
execute unless score #gamemode mem matches 2 run advancement grant @s[scores={tran_mats=5..}] only ltw:parkour/river1
execute unless score #gamemode mem matches 2 run advancement grant @s[scores={tran_mats_ex=2..}] only ltw:parkour/river3

# 清除物资物品
clear @s chest{game_item: 1b}
clear @s ender_chest{game_item: 1b}

# 移除物资标签
tag @s remove has_mats
tag @s remove has_mats_basic
tag @s remove has_mats_speci

# 效果清除
effect clear @s glowing

# 若有玩家有十五个以上物资，则游戏立即结束
execute if entity @a[scores={tran_mats=15..}] run function mini:main/game_end