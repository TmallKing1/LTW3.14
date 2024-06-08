# 向单个玩家展示小游戏介绍
tp @s[team=!debugging] 1015.39 50.83 18015.78 498.00 69.45
effect give @s night_vision infinite 0 true
tellraw @s ["",{"text":"\n >> 子弹时间 >>  ","color":"light_purple","bold":true},{"text": "提出者：JK137  实现者：小猪之最Thepig","color": "aqua"},"\n\n 使用弓箭射击 ",{"text":"村民头上的苹果","color":"gold"}," 或者下落的怪物来获得能量值！\n 射击不同的怪物可以获得不同的效果。\n 在下落到地面之前尽可能多地获取能量值吧！\n\n",{"text": " <仅允许远程击退玩家> ","color":"yellow"},"\n "]
execute if score $ley_line_disorder mem matches 1 run tellraw @s ["",{"text": " ▶ 幻境干扰: ","color": "#7B68EE"},{"text": "怪物会从下到上运动，且玩家的弓附有力量效果！\n "}]
execute if score $ley_line_disorder mem matches 2 run tellraw @s ["",{"text": " ▶ 幻境干扰: ","color": "#7B68EE"},{"text": "玩家的弓发射的箭能够将命中的对象击退更远的距离。\n "}]
execute if score $ley_line_disorder mem matches 3 run tellraw @s ["",{"text": " ▶ 幻境干扰: ","color": "#7B68EE"},{"text": "游戏开始时，玩家会获得黑暗效果。\n "}]