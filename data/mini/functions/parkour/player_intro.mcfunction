# 向单个玩家展示小游戏介绍
tp @s[team=!debugging] 1010.96 26.83 1032.37 -385.24 16.67
execute unless score $ley_line_disorder mem matches 1 run tellraw @s ["",{"text":"\n >> 遗迹寻宝 >>  ","color":"gold","bold":true},{"text": "作者：Hex-Dragon","color": "aqua"},"\n\n"," 以最快速度 ",{"text":"冲向终点","color":"gold"}," 即可获胜！\n 但慢慢前进, 收集沿途隐藏的宝藏也不错……\n\n",{"text": " <无法攻击玩家> ","color":"green"},"\n "]
execute if score $ley_line_disorder mem matches 1 run tellraw @s ["",{"text":"\n >> 遗迹寻宝 >>  ","color":"gold","bold":true},{"text": "作者：Hex-Dragon","color": "aqua"},"\n\n"," 以最快速度 ",{"text":"冲向终点","color":"gold"}," 即可获胜！\n 但慢慢前进, 收集沿途隐藏的宝藏也不错……\n\n",{"text": " <只能击退玩家> ","color":"yellow"},"\n "]
execute if score $ley_line_disorder mem matches 1 run tellraw @s ["",{"text": " ▶ 幻境干扰: ","color": "#7B68EE"},{"text": "击退可用，尝试阻止其他玩家到达终点吧！\n "}]
