# 向单个玩家展示小游戏介绍
tp @s[team=!debugging] 4.5 228 4997 -90 0
worldborder set 1000000
effect give @s[team=!debugging] night_vision infinite 0 true
tellraw @s ["",{"text":"\n >> 富翁之路 >>  ","color":"gold","bold":true},{"text": "作者：小猪之最Thepig","color": "aqua"},{"text": "\n\n 使用粗铁与箱子","color": "gold"}," 在工作台合成漏斗矿车，\n 并在漏斗矿车内出售指定的物品, 成为 ",{"text":"持有信用点最多","color":"gold"}," 的人吧！\n 但是, 被杀死的玩家会掉落 1/3 的物品和一半的信用点……\n\n",{"text": " <生存模式> ","color":"aqua"},{"text": " <可以杀死玩家> ","color":"red"},"\n "]
title @s actionbar [{"text": "地图正在随机生成，可能会有卡顿！","color": "red"}]