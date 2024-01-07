# 开始新的一轮

# 设置倒计时
scoreboard players operation $countdown_temp mem = $player_alive mem
scoreboard players operation $countdown_temp mem *= #20 mem
scoreboard players add $countdown_temp mem 40
scoreboard players operation $countdown_fast mem = $countdown_temp mem
scoreboard players operation $countdown_max mem = $countdown_fast mem
function lib:bossbar/show

# 计算将要伤害的玩家数
execute if score $player_alive mem matches 6..8 run scoreboard players set $boom_count mem 3
execute if score $player_alive mem matches 4..5 run scoreboard players set $boom_count mem 2
execute if score $player_alive mem matches 2..3 run scoreboard players set $boom_count mem 1
execute if score $player_alive mem matches 1 run scoreboard players set $boom_count mem 0

# 显示提示
tellraw @a[team=!debugging] ["",{"text":">> ","color": "gold","bold": true},"本轮距离 TNT 最近的 ",{"score": {"name": "$boom_count","objective": "mem"},"color": "gold"}," 名玩家将会受到伤害！"]
execute as @a at @s run function lib:sounds/hit

# 重置玩家分数
scoreboard players reset @a[tag=mini_running] tntUsed

# 传送玩家
execute if score $ley_line_disorder mem matches 1 run spreadplayers 999.0 17048.0 4 24 false @a[tag=mini_running]

# 生成两个 TNT
function mini:chain/game/random_tnt
function mini:chain/game/random_tnt