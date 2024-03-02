# 向单个玩家展示小游戏介绍
tp @s[team=!debugging] 1005.01 30.87 13012.06 -69.45 20.55
effect give @s[team=!debugging] night_vision infinite 0 true
tellraw @s ["",{"text":"\n >> 掘一死箭 >>  ","color":"gold","bold":true},{"text": "作者：小猪之最Thepig","color": "aqua"},"\n\n 使用弓箭引爆其他玩家脚下的 TNT 来使其掉落！\n 满蓄力射出的箭会变为分裂箭！\n 只需要 ",{"text":"活到最后","color":"gold"}," 即可获胜！\n\n",{"text": " <只能使用道具淘汰玩家> ","color":"yellow"},"\n "]
execute if score $ley_line_disorder mem matches 1 run tellraw @s ["",{"text": " ▶ 幻境干扰: ","color": "#7B68EE"},{"text": "射出的所有箭均为分裂箭。（无法完成百步穿杨 · α进度）\n "}]
execute if score $ley_line_disorder mem matches 2 run tellraw @s ["",{"text": " ▶ 幻境干扰: ","color": "#7B68EE"},{"text": "使用带有快速装填的弩来完成本场游戏！（无法完成百步穿杨 · α进度）\n "}]
execute if score $ley_line_disorder mem matches 3 run tellraw @s ["",{"text": " ▶ 幻境干扰: ","color": "#7B68EE"},{"text": "玩家可以使用弓箭击退其他玩家。\n "}]