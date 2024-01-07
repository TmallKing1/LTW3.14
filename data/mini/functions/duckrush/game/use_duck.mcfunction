# 设置玩家分数
scoreboard players set @s countdown_fast 20
scoreboard players reset @s duckUse

# 改变鸭子方向
function mini:duckrush/game/duck_change_direction/player_direction

# 清除刷怪蛋以防bug
clear @s chicken_spawn_egg{game_item:1b}