# 向单个玩家展示小游戏介绍
tp @s[team=!debugging] 2045.46 6.71 2019.21 -1694.39 10.65
effect give @s[team=!debugging] night_vision infinite 0 true
tellraw @s ["",{"text":"\n >> 破罐之王 >>  ","color":"gold","bold":true},{"text": "作者：小猪之最Thepig","color": "aqua"},"\n\n 用雪球打破罐子、击杀玩家，成为最后一个生还者！\n ",{"text":"不同纹饰的罐子","color":"gold"}," 打碎后有不同事件发生！\n\n",{"text": " <除特定情况外无法攻击玩家> ","color":"green"},"\n "]