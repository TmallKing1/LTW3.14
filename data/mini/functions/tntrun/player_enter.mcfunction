# 单个玩家开始小游戏时执行
function lib:sounds/music/mini_fast
title @s clear
title @s actionbar ""

# 给予状态效果
effect clear @s
function mini:main/give_effect

# 设置玩家生命
attribute @s generic.max_health base set 20

# 传送玩家
execute unless score $ley_line_disorder mem matches -1 run spreadplayers 1019.5 2020.5 3 3 false @s[team=playing,tag=!rejoining]
execute if score $ley_line_disorder mem matches -1 run spreadplayers 1019.5 2020.5 3 3 false @s[team=playing,tag=!rejoining]

# 逆转模式
execute if score $ley_line_disorder mem matches -1 run title @s[team=playing,tag=!rejoining] times 10t 40t 10t
execute if score $ley_line_disorder mem matches -1 run title @s[team=playing,tag=!rejoining] subtitle "请在 5 秒内找到合适的落脚点"
execute if score $ley_line_disorder mem matches -1 run title @s[team=playing,tag=!rejoining] title {"text": "游戏开始","color": "green"}
execute if score $ley_line_disorder mem matches -1 run effect give @s blindness 1 0 true
execute if score $ley_line_disorder mem matches -1 run effect give @s levitation 5 255
execute if score $ley_line_disorder mem matches -1 run scoreboard players set @s[team=playing,tag=!rejoining] layer_highest 0

# 清理 tag
tag @s remove layer_bottom
tag @s remove tntrun_adv_failed

# 两秒后才开始 TNT 掉落
tag @s remove tntrun_pc
# schedule: tag @a add tntrun_pc

# 调整模式
gamemode spectator @s[team=!debugging]
gamemode adventure @s[team=playing,tag=!rejoining]

# 重新加入处理
execute if entity @s[tag=rejoining] run function mini:tntrun/player_failed