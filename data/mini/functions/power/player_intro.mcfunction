# 向单个玩家展示小游戏介绍
tp @s[team=!debugging] 1003.56 -38.75 19002.79 -43.65 37.50
effect give @s[team=!debugging] night_vision infinite 0 true
tellraw @s ["",{"text":"\n >> 会心一击 >>  ","color":"red","bold":true},{"text": "地图：Hex-Dragon  改图 & 作者：小猪之最Thepig","color": "aqua"},"\n\n 收集能量点与攻击加成，击败玩家，获得尽可能多的击杀数！\n ",{"text": "消耗 100 点能量","color": "gold"}," 即可发动会心一击，重创你的对手！\n\n",{"text": " <限时活动游戏> ","color":"blue"},{"text": " <可以杀死玩家> ","color":"red"},"\n "]