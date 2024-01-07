# 开始游戏

# 确认实际玩家
tag @a remove selected_player
tag @a[team=playing,sort=random,limit=8] add selected_player

# 通知队伍
tellraw @a[team=playing,tag=!selected_player] ["",{"text": ">> ","color": "red","bold": true},{"text": "你没有被选中参与, 将旁观本局游戏!","color": "red"}]
team join watching @a[team=playing,tag=!selected_player]
tellraw @a[team=playing,tag=selected_player] ["",{"text": ">> ","color": "green","bold": true},{"text": "游戏开始!","color": "green"}]
#tellraw @a[team=playing,tag=selected_player,tag=!double_reward] ["",{"text": ">> ","color": "green","bold": true},{"text": "游戏开始!","color": "green"}]
#tellraw @a[team=playing,tag=selected_player,tag=double_reward] ["",{"text": ">> ","color": "green","bold": true},{"text": "游戏开始，本场游戏你将获得双倍奖励!","color": "green"}]
tellraw @a[team=watching] ["",{"text": ">> ","color": "green","bold": true},{"text": "游戏开始, 你将旁观本局游戏!","color": "green"}]
tellraw @a[team=debugging] ["",{"text": ">> ","color": "aqua","bold": true},{"text": "你正处于 Debug 模式中, 将忽略游戏开始!","color": "aqua"}]

# 设置数据
scoreboard players reset * total_score
scoreboard players set @a[team=playing] total_score 0
scoreboard players reset * total_score_disp
scoreboard players set @a[team=playing] total_score_disp 0
scoreboard players set @a gold_extra 0
scoreboard players set @a green_extra 0
scoreboard players set $round mem 1
scoreboard players add $ game_id 1
scoreboard players operation @a game_id = $ game_id

#execute unless score $test_mode mem matches 1 run scoreboard players remove @a[tag=double_reward] double_reward 1

# 活动：元素战争（随机轮）
#execute store result score $element_turn mem run random value 1..5

# 1.0版本活动：会心一击
# 设置轮数为 0
#scoreboard players set $round mem 0

# 等待中 Bossbar
bossbar set ltw:waiting visible false

# 设置玩家id
scoreboard players set @a[team=playing] player_id 0
scoreboard players set $player_id mem 0
execute if entity @a[team=playing,scores={player_id=0}] run function ltw:state/0/set_player_id

# 重置物品
clear @a[team=playing]
# 1.0 版本活动：开局不重置物品，打完第零局再重置
execute as @a[team=playing] at @s run function item:shop/refresh_equip

# 重置小游戏编号数组
data modify storage ltw:mini types set value []

# 开始小游戏
function lib:sounds/music/stop
function ltw:state/3/state_enter