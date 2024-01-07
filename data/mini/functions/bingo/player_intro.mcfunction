# 向单个玩家展示小游戏介绍
tp @s[team=!debugging] 1013.47 247.63 5045.62 -178.86 17.18
worldborder set 1000000
effect give @s[team=!debugging] night_vision infinite 0 true
tellraw @s ["",{"text":"\n >> 三点一线 >>  ","color":"gold","bold":true},{"text": "查看作者信息","color": "aqua","underlined": true,"hoverEvent": {"action": "show_text","contents": {"text": "提出者：passerby_yin\n实现者：小猪之最Thepig\n地图：Hex-Dragon","color": "aqua"}}},"\n\n 完成九宫格内的收集任务来点亮方格，\n 将横向/纵向的 ",{"text":"三个连续方格","color":"gold"}," 全部点亮即可获得游戏的胜利！\n 完成目标人数不足三人时，未完成的玩家会按完成任务数排名！\n\n ",{"text": " <生存模式> ","color":"aqua"},{"text": " <可以杀死玩家> ","color":"red"},"\n "]