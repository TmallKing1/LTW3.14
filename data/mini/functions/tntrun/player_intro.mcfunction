# 向单个玩家展示小游戏介绍
tp @s[team=!debugging] 1023.65 20.29 2006.59 -345.99 17.34
effect give @s[team=!debugging] night_vision infinite 0 true
tellraw @s ["",{"text":"\n >> 地陷圣坛 >>  ","color":"gold","bold":true},{"text": "作者：Hex-Dragon","color": "aqua"},"\n\n 你脚踩的方块会自然消失！\n 不要停下, 保持移动, 只要 ",{"text":"不掉下场地","color":"gold"}," 即可获胜！\n\n",{"text": " <只能击退玩家> ","color":"yellow"},"\n "]
execute if score $ley_line_disorder mem matches 1 run tellraw @s ["",{"text": " ▶ 幻境干扰: ","color": "#7B68EE"},{"text": "玩家在第 2 层及以上时，跳跃能力大幅下降。\n "}]
execute if score $ley_line_disorder mem matches 3 run tellraw @s ["",{"text": " ▶ 幻境干扰: ","color": "#7B68EE"},{"text": "玩家在第 2 层及以上时，获得移动速度和跳跃提升。\n "}]