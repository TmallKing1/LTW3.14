# 设置玩家是否可以投票
tag @s remove canvote
tag @s[team=playing,tag=!rejoining] add canvote

# 重置投票状态
scoreboard players set @s vote_game 0
scoreboard players enable @s vote_trigger
trigger vote_trigger set 0
scoreboard players enable @s[tag=canvote] vote_trigger

# 显示标题
title @s times 10 60 10
title @s[tag=canvote] subtitle "使用物品栏最后一格的书，投票决定下一场游戏吧！"
title @s title {"text": "投票模式","color": "gold"}

# 传送玩家
tp @s[team=!debugging] 24.5 11.0 1967.5 112.5 25
execute at @s run function lib:sounds/curse

# 调整模式
gamemode spectator @s[team=!debugging]
gamemode adventure @s[tag=canvote]