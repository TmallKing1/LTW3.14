# 向单个玩家展示小游戏介绍
tp @s[team=!debugging] 1016.0 21 10016.0 135 70
tellraw @s ["",{"text":"\n >> 矿车抢座 >>  ","color":"light_purple","bold":true},{"text": "作者：小猪之最Thepig","color": "aqua"},"\n\n 抓紧时间抢到数量有限的座位，不要被别人抢走了！\n ",{"text":"攻击处于矿车内的玩家","color":"gold"}," 有概率将玩家踢下矿车。\n 未抢到座位或掉入虚空的玩家会损失生命。\n\n",{"text": " <只能击退玩家> ","color":"yellow"},"\n "]
execute if score $ley_line_disorder mem matches 1 run tellraw @s ["",{"text": " ▶ 幻境干扰: ","color": "#7B68EE"},{"text": "矿车会随机乱动，且不会掉入虚空。\n "}]
execute if score $ley_line_disorder mem matches 2 run tellraw @s ["",{"text": " ▶ 幻境干扰: ","color": "#7B68EE"},{"text": "玩家被赶下车的概率提高，且没有加时赛。\n "}]
execute if score $ley_line_disorder mem matches 3 run tellraw @s ["",{"text": " ▶ 幻境干扰: ","color": "#7B68EE"},{"text": "若玩家被赶下矿车，则本轮中该玩家赶人下车的概率大幅提高。\n "}]
effect give @s night_vision infinite 0 true