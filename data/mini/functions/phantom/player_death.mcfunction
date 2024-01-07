# 玩家死亡时由玩家自己触发
spreadplayers 1030 6031 3 3 under 18 false @s[team=playing]
execute unless score $ley_line_disorder mem matches 2 run tellraw @s ["",{"text": ">> ","color":"red","bold": true},{"text": "死亡惩罚: 失明 6 秒","color":"red"}]
execute unless score $ley_line_disorder mem matches 2 run effect give @s blindness 6 0
execute unless score $ley_line_disorder mem matches 2 run effect give @s resistance 2 4 true
execute if score $ley_line_disorder mem matches 2 run function mini:main/player_failed
execute as @a at @s run function lib:sounds/error