# 向单个玩家展示小游戏介绍
tp @s[team=!debugging] 934.72 31.30 17046.39 -450.53 16.39
effect give @s[team=!debugging] night_vision infinite 0 true
tellraw @s ["",{"text":"\n >> 螈周运动 >>  ","color":"gold","bold":true},{"text": "作者：小猪之最Thepig","color": "aqua"},"\n\n 被拴绳拴住的美西螈会绕着你运动，并对接触到的其他玩家造成伤害！\n 用拴绳捕捉地图中生成的美西螈来扩充你的军队！\n ",{"text":"击杀数最多的玩家","color":"gold"}," 即可获胜！\n\n",{"text": " <可以间接杀死玩家> ","color":"red"},"\n "]
weather rain