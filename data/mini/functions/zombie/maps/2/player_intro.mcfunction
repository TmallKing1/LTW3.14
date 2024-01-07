# 向单个玩家展示小游戏介绍
tp @s[team=!debugging] 2011.35 2.66 11986.82 359.54 1.93
tellraw @s ["",{"text":"\n >> 尸海寻路 >>  ","color":"gold","bold":true},{"text": "地图：misivid_koukou  作者：小猪之最Thepig","color": "aqua"},"\n\n 强化的僵尸会不断生成，",{"text":"尽可能获得更多能量值","color":"gold"}," 来获得游戏的胜利！\n 持续生存下去和击杀僵尸都能获得能量值。\n 虚空会对玩家造成大量伤害，千万不要失足掉下去了！\n\n",{"text": " <无法攻击玩家> ","color":"green"},{"text": " <无法钓鱼> ","color": "light_purple"},"\n "]
execute if score $ley_line_disorder mem matches 1 run tellraw @s ["",{"text": " ▶ 幻境干扰: ","color": "#7B68EE"},{"text": "玩家在该局游戏中会持续获得失明效果。\n "}]
execute if score $ley_line_disorder mem matches 2 run tellraw @s ["",{"text": " ▶ 幻境干扰: ","color": "#7B68EE"},{"text": "所有玩家与僵尸都会获得 20% 的近战伤害加成。\n "}]

# 夜视
effect give @s night_vision 100000 0 true