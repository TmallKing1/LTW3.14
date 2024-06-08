# 向单个玩家展示小游戏介绍
tp @s[team=!debugging] 2045.46 6.71 2019.21 -1694.39 10.65
effect give @s[team=!debugging] night_vision infinite 0 true
tellraw @s ["",{"text":"\n >> 破罐之王 >>  ","color":"light_purple","bold":true},{"text": "作者：小猪之最Thepig","color": "aqua"},"\n\n 用雪球打破尽可能多的罐子并设法击杀玩家！\n ",{"text":"不同纹饰的罐子","color":"gold"}," 打碎后有不同事件发生！\n\n",{"text": " <除特定情况外无法攻击玩家> ","color":"green"},"\n "]
execute if score $ley_line_disorder mem matches 1 run tellraw @s ["",{"text": " ▶ 幻境干扰: ","color": "#7B68EE"},{"text": "场地上会生成具有随机效果的罐子。\n "}]
execute if score $ley_line_disorder mem matches 2 run tellraw @s ["",{"text": " ▶ 幻境干扰: ","color": "#7B68EE"},{"text": "打碎攻击罐子后获得的附魔雪球数量增加。\n "}]
execute if score $ley_line_disorder mem matches 3 run tellraw @s ["",{"text": " ▶ 幻境干扰: ","color": "#7B68EE"},{"text": "打碎爆炸罐子后造成的伤害范围与伤害值增加。\n "}]
execute if score $ley_line_disorder mem matches 4 run tellraw @s ["",{"text": " ▶ 幻境干扰: ","color": "#7B68EE"},{"text": "打碎回血罐子后获得的生命值回复效果时间翻倍。\n "}]