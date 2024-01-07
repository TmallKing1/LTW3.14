# 向单个玩家展示小游戏介绍
effect give @s night_vision infinite 0 true
tp @s[team=!debugging] 1001.0 14 9001.0 -45 90
tellraw @s ["",{"text":"\n >> 山丘之王 >>  ","color":"gold","bold":true},{"text": "地图：Hex-Dragon  作者：小猪之最Thepig","color": "aqua"},"\n\n 保持在红色区域即可 ",{"text":"获得能量值","color":"gold"},"。\n 能量值最多的玩家即可获胜！\n\n",{"text": " <只能击退玩家> ","color":"yellow"},{"text": " <免疫击退效果在本轮无效>","color":"light_purple"},"\n "]
execute if score $ley_line_disorder mem matches 1 run tellraw @s ["",{"text": " ▶ 幻境干扰: ","color": "#7B68EE"},{"text": "没有击退鱼可以用了，但能量值的增长速度也减缓了……\n "}]
execute if score $ley_line_disorder mem matches 2 run tellraw @s ["",{"text": " ▶ 幻境干扰: ","color": "#7B68EE"},{"text": "击退鱼击退力减小，同时玩家获得缓降效果。\n "}]
