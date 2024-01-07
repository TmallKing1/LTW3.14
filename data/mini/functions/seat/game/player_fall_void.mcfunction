# 掉血
tellraw @a ["",{"text":">> ","color":"gold","bold": true},{"selector":"@s","color":"gold"}," 掉入了虚空！"]
function mini:main/player_lose_heart

# 传送玩家
tp @s[tag=mini_running] 1016.0 27 10016.0
tag @s[tag=mini_running] add seat_waiting