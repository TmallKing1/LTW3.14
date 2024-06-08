# 向单个玩家展示小游戏介绍
tp @s[team=!debugging] 2011.64 22.54 3012.48 288.90 21.75
effect give @s[team=!debugging] night_vision infinite 0 true
tellraw @s ["",{"text":"\n >> 水中寻宝 >>  ","color":"light_purple","bold":true},{"text": "作者：小猪之最Thepig","color": "aqua"},"\n\n 使用刷子发现水底的宝藏，并存放在出生点！\n ",{"text":"可疑的沙砾","color":"gold"}," 往往藏有价值更高的东西！\n 游戏结束时存放金钱最多的玩家获胜！\n\n",{"text": " <可以杀死玩家> ","color":"red"},"\n "]
execute if score $ley_line_disorder mem matches 1 run tellraw @s ["",{"text": " ▶ 幻境干扰: ","color": "#7B68EE"},{"text": "玩家可以在水下呼吸更长时间，但氧气值耗尽时就会立刻死亡。\n "}]
execute if score $ley_line_disorder mem matches 2 run tellraw @s ["",{"text": " ▶ 幻境干扰: ","color": "#7B68EE"},{"text": "从商店购买的金剑升级为一击必杀，但只有一点耐久度。\n "}]
execute if score $ley_line_disorder mem matches 3 run tellraw @s ["",{"text": " ▶ 幻境干扰: ","color": "#7B68EE"},{"text": "玩家未持有金钱时拾取金钱数量翻倍，其余情况拾取数量减半。\n "}]