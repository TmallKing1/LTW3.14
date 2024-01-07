# 告知玩家
tellraw @a ["",{"text":">> ","color":"gold","bold": true},{"selector":"@s","color":"gold"}," 掉入了陷阱!"]

# Omega 进度判定
execute if score $player_alive mem matches 2 if score @s mini_heart matches 1 on attacker run tag @s add colormatch_adv_success

# 失去一颗心
tag @s add colormatch_hurt
function mini:main/player_lose_heart
function lib:sounds/error

# 拉上屏障
execute if entity @s[tag=mini_running] run tp @s 1060 29 4010
execute if entity @s[tag=mini_running] run tag @a remove colormatch_adv_success
tag @s add color_match_fall
