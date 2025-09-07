scoreboard players add @a[tag=mini_running] surviveRound 1
scoreboard players set @a[team=playing] mini_score 0
execute as @a[team=playing] run scoreboard players operation @s mini_score = @s surviveRound
# 结束抢座
forceload remove 1000 10000 1031 10031

# 清理矿车
kill @e[type=minecart,tag=seat_mc]

# 清理玩家 Tag
tag @a remove in_minecart
tag @a remove seat_waiting

# HUD
scoreboard players set $bossbar_type mem 0
function lib:bossbar/show