# 向单个玩家展示小游戏介绍
tp @s[team=!debugging] 1025.57 10.20 14018.97 1540.20 42.45
tellraw @s ["",{"text":"\n >> 鸭子快跑 >>  ","color":"red","bold":true},{"text": "作者：小猪之最Thepig","color": "aqua"},"\n\n 鸭子会在场地中走动，像躲弹幕一样避开它们来避免被创死吧！\n 你也可以 ",{"text":"自己召唤鸭子","color":"gold"}," 来攻击其他玩家！\n ",{"text":"在鸭子行进的路线放水","color":"gold"}," 来让它们吸水而消失！\n\n",{"text": " <已结束的活动游戏> ","color":"dark_aqua"},{"text": " <无法攻击玩家> ","color":"green"},"\n "]
effect give @s night_vision infinite 0 true