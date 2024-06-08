# 给予状态效果
effect clear @s
function mini:main/give_effect

# 传送玩家
tp @s[team=playing,tag=!rejoining] 2029.5 22 3014.5 90 0

# 设置玩家生命
attribute @s generic.max_health base set 10
effect give @s instant_health 1 0 true

# 显示提示
title @s times 10 60 10
title @s title {"text": "你死了!","color": "red"}
title @s subtitle "你掉落了所有金钱!"