# 开始游戏

# 确认实际玩家
team join playing @a[team=playing_lost]
tag @a remove selected_player
tag @a[team=playing,sort=random,limit=8] add selected_player

# 通知队伍
tellraw @a[team=playing,tag=!selected_player] ["",{"text": ">> ","color": "red","bold": true},{"text": "你没有被选中参与, 将旁观本局游戏!","color": "red"}]
team join watching @a[team=playing,tag=!selected_player]
tellraw @a[team=playing,tag=selected_player] ["",{"text": ">> ","color": "green","bold": true},{"text": "游戏开始!","color": "green"}]
tellraw @a[team=watching] ["",{"text": ">> ","color": "green","bold": true},{"text": "游戏开始, 你将旁观本局游戏!","color": "green"}]
tellraw @a[team=debugging] ["",{"text": ">> ","color": "aqua","bold": true},{"text": "你正处于 Debug 模式中, 将忽略游戏开始!","color": "aqua"}]

# 设置数据
scoreboard players reset * total_score
scoreboard players set @a[team=playing] total_score 0
scoreboard players reset * total_score_disp
scoreboard players set @a[team=playing] total_score_disp 0
scoreboard players reset * exp_temp
scoreboard players set @a gold_extra 0
scoreboard players set @a green_extra 0
scoreboard players add $ game_id 1
scoreboard players operation @a game_id = $ game_id

# 轮次：逆转模式为第 6 轮，否则为第 1 轮
scoreboard players set $round mem 1
execute if score #gamemode mem matches 2 run scoreboard players set $round mem 6

execute unless score $test_mode mem matches 1 run scoreboard players remove @a[team=playing,tag=double_reward] double_reward 1

# 活动：元素战争（随机轮）
#execute store result score $element_turn mem run random value 1..5

# 1.0版本活动：会心一击
# 设置轮数为 0
#scoreboard players set $round mem 0

# 1.2版本活动：发动总攻
# 设置分数
#scoreboard players set $attack_end mem 0
#scoreboard players reset * damage_dealt
#scoreboard players reset * damage_dealt_back

# 1.4 版本活动：元素战争 EX
# 设置轮数为 0
#scoreboard players set $round mem 0

# 等待中 Bossbar
bossbar set ltw:waiting visible false

# 设置玩家id
scoreboard players set @a[team=playing] player_id 0
scoreboard players set $player_id mem 0
execute if entity @a[team=playing,scores={player_id=0}] run function ltw:state/0/set_player_id

# 玩家出生点
spawnpoint @a[team=!debugging] -12 7 -102

# 重置物品
clear @a[team=playing]
# 1.0/1.4 版本活动：开局不重置物品，打完第零局再重置（注释下面一条指令）
execute as @a[team=playing] at @s run function item:shop/refresh_equip

# 重置小游戏编号数组
data modify storage ltw:mini types set value []

# 开始小游戏（非逆转模式）/投票（逆转模式）
function lib:sounds/music/stop
execute unless score #gamemode mem matches 2 run function ltw:state/3/state_enter
execute if score #gamemode mem matches 2 run function ltw:state/2/state_enter