# 向单个玩家展示小游戏介绍
tp @s[team=!debugging] 1012.33 12.13 7006.82 -28.40 23.85
effect give @s night_vision infinite 0 true
execute if score $ley_line_disorder mem matches 0.. run tellraw @s ["",{"text":"\n >> 核爆刺客 >>  ","color":"gold","bold":true},{"text": "作者：Hex-Dragon","color": "aqua"},"\n\n 用刷怪蛋 ",{"text":"召唤苦力怕炸死对方！","color":"gold"},"\n 最后一格的击退棒能击飞苦力怕和玩家！\n\n",{"text": " <只能击退玩家> ","color":"yellow"},"\n "]
execute if score $ley_line_disorder mem matches 1 run tellraw @s ["",{"text": " ▶ 幻境干扰: ","color": "#7B68EE"},{"text": "苦力怕被放下后的爆炸前等待时间更短。\n "}]
execute if score $ley_line_disorder mem matches 2 run tellraw @s ["",{"text": " ▶ 幻境干扰: ","color": "#7B68EE"},{"text": "召唤的苦力怕均为闪电苦力怕。\n ","underlined": true,"hoverEvent": {"action": "show_text","value": {"text": "灵感来源：核爆刺客 L 难度 by Seayay"}}}]
execute if score $ley_line_disorder mem matches 3 run tellraw @s ["",{"text": " ▶ 幻境干扰: ","color": "#7B68EE"},{"text": "苦力怕的生成方式为按 ","extra": [{"keybind": "key.swapOffhand"},{"text": " 扔出而非放在地上。\n "}],"underlined": true,"hoverEvent": {"action": "show_text","value": {"text": "灵感来源：JK 魔改竞技场召唤师职业的 4 技能"}}}]
execute if score $ley_line_disorder mem matches 4 run tellraw @s ["",{"text": " ▶ 幻境干扰: ","color": "#7B68EE"},{"text": "苦力怕的爆炸范围增大，但两次召唤之间的冷却时间延长。\n "}]
execute if score $ley_line_disorder mem matches 5 run tellraw @s ["",{"text": " ▶ 幻境干扰: ","color": "#7B68EE"},{"text": "每过一段时间，每名玩家所处的位置就会生成一只苦力怕。\n "}]
execute if score $ley_line_disorder mem matches -1 run tellraw @s ["",{"text":"\n >> 核爆刺客 >>  ","color":"dark_red","bold":true},{"text": "作者：Hex-Dragon","color": "aqua"},"\n\n 你可以放置或按 ",{"keybind": "key.swapOffhand","color": "gold"}," 投掷苦力怕，\n 同时苦力怕会破坏方块了！\n\n",{"text": " <生存模式> ","color":"aqua"},{"text": " <只能击退玩家> ","color":"yellow"},"\n "]