# 向单个玩家展示小游戏介绍
tp @s[team=!debugging] 2004.7 25.7 1024.1 -125 20
effect give @s night_vision infinite 0 true
tellraw @s ["",{"text":"\n >> 爆裂纷争 >>  ","color":"light_purple","bold":true},{"text": "作者：","color": "aqua"},{"text": "Roser7419","underlined": true,"color": "aqua","clickEvent": {"action": "open_url","value": "https://github.com/Roser7419/"},"hoverEvent": {"action": "show_text","contents": {"text": "点击查看其 GitHub 主页\n已获得使用授权。"}}},"\n\n 使用给予的炸药 ",{"text":"炸死对手, 破坏平台！","color":"gold"},"\n 也可以使用炸药来把敌人扔下去！\n\n",{"text": " <只能使用道具淘汰玩家> ","color":"yellow"},"\n "]
execute if score $ley_line_disorder mem matches 1 run tellraw @s ["",{"text": " ▶ 幻境干扰: ","color": "#7B68EE"},{"text": "玩家放置 TNT 后获得 1 秒的速度效果。\n "}]
execute if score $ley_line_disorder mem matches 2 run tellraw @s ["",{"text": " ▶ 幻境干扰: ","color": "#7B68EE"},{"text": "玩家受到来自 TNT 的伤害后，获得飘浮效果。\n "}]
execute if score $ley_line_disorder mem matches 3 run tellraw @s ["",{"text": " ▶ 幻境干扰: ","color": "#7B68EE"},{"text": "玩家受到的伤害大幅减少。\n "}]