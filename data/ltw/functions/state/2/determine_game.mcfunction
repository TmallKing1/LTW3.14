# 随机游戏数值
data modify storage ltw:random random_min set value 1
execute store result storage ltw:random random_max int 1 run scoreboard players get @e[tag=vote_max,limit=1] vote_value
function lib:random with storage ltw:random

# 选定最终要采用的游戏

## 选择所有投票值大于等于随机数的标记
execute as @e[type=marker,tag=vote] if score $random mem <= @s vote_value run tag @s add game_candidate
## 在这些标记中选择投票值最小的一个
scoreboard players set $game_val mem 2147483647
scoreboard players operation $game_val mem < @e[tag=game_candidate] vote_value
execute as @e[type=marker,tag=vote] if score @s vote_value = $game_val mem run tag @s add selected_game
## 将选定的标记vote_game存储至$mini_type
scoreboard players operation $mini_type mem = @e[tag=selected_game] vote_game

# 清理
kill @e[tag=vote,type=marker]

# 展示得票数
tellraw @a[team=!debugging] ["",{"text": ">> ","color": "aqua","bold": true},"得票数：钢铁狂潮/贸易专家/钻石风暴/富翁之路/三点一线=",{"score":{"name": "钢铁狂潮","objective": "vote_game_disp"},"color": "aqua"},"/",{"score":{"name": "贸易专家","objective": "vote_game_disp"},"color": "aqua"},"/",{"score":{"name": "钻石风暴","objective": "vote_game_disp"},"color": "aqua"},"/",{"score":{"name": "富翁之路","objective": "vote_game_disp"},"color": "aqua"},"/",{"score":{"name": "三点一线","objective": "vote_game_disp"},"color": "aqua"}]

# 进入游戏准备阶段
function ltw:state/3/state_enter