# 玩家失败时由玩家自己触发

# 计数
tag @s remove mini_running
function mini:main/update_player_count

# 显示提示
execute if entity @s[tag=!rejoining] if score $player_alive mem matches 1.. run tellraw @a ["", {"text": ">> ","color": "red","bold": true},{"selector": "@s","color": "white"},{"text": " 已死亡！还有 ","color": "red"},{"score": {"name": "$player_alive", "objective": "mem"},"color": "white"}, {"text": " 人","color": "white"}, {"text": " 存活！","color": "red"}]
execute as @a at @s run function lib:sounds/error

# mcc
execute at @s run playsound mcc:games.global.objective.team_eliminated player @s

# 清理怪东西
clear @s #mini:game_item{game_item: 1b}

# 给存活的玩家加分
scoreboard players add @a[tag=mini_running] mini_score 1

# 进入旁观
gamemode spectator

# 检查游戏是否结束
function mini:main/check_game_end