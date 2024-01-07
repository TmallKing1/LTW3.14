# 向单个玩家展示小游戏介绍
tp @s[team=!debugging] 1026.52 12.76 3005.59 47.21 22.60
tellraw @s ["",{"text":"\n >> 炸弹狂魔 >>  ","color":"gold","bold":true},{"text": "作者：Hex-Dragon","color": "aqua"},"\n\n 炸弹会在一段时间后爆炸！\n 在持有炸弹时, 只要 ",{"text":"攻击其他人","color":"gold"}," 就能把炸弹甩给他！\n 努力存活下来吧！\n\n",{"text": " <只能击退玩家> ","color":"yellow"},"\n "]
execute if score $ley_line_disorder mem matches 1 run tellraw @s ["",{"text": " ▶ 幻境干扰: ","color": "#7B68EE"},{"text": "炸弹稳定度对持有炸弹的玩家不可见。\n "}]
execute if score $ley_line_disorder mem matches 2 run tellraw @s ["",{"text": " ▶ 幻境干扰: ","color": "#7B68EE"},{"text": "炸弹的击退能力大幅提升。\n "}]
execute if score $ley_line_disorder mem matches 3 run tellraw @s ["",{"text": " ▶ 幻境干扰: ","color": "#7B68EE"},{"text": "所有玩家的速度提升，但每回合的限时减少。\n "}]
effect give @s night_vision infinite 0 true