# 玩家死亡时由玩家自己触发

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
effect give @s night_vision infinite 0 true

# 检查游戏是否结束
function mini:main/check_game_end

# 奖励
execute if entity @a[tag=mini_running] run tellraw @a ["",{"text": ">> ","color": "gold","bold": true},{"text": "所有存活玩家获得 10 破罐数！","color": "gold"}]
execute if entity @a[tag=mini_running] run scoreboard players add @a[tag=mini_running] vase_broken 10

# 仅剩一人提示
execute if score $player_alive mem matches 1 run title @a[team=!debugging] times 10t 3s 10t
execute if score $player_alive mem matches 1 run title @a[team=!debugging] subtitle {"text": "本回合结束后游戏就会结束！"}
execute if score $player_alive mem matches 1 run title @a[team=!debugging] title {"text": "仅剩一人!","color": "dark_red"}
execute if score $player_alive mem matches 1 as @a[team=!debugging] at @s run function lib:sounds/curse
execute if score $player_alive mem matches 1 if score $countdown mem matches ..10 run scoreboard players add $countdown mem 10
execute if score $player_alive mem matches 1 run bossbar set mini:blue name ["第 ",{"score": {"name": "$current_turn","objective": "mem"},"color": "aqua"}," 回合 [",{"score":{"name": "$countdown","objective": "mem"},"color": "aqua"},"]"]