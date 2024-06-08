# 向单个玩家展示小游戏介绍
effect give @s night_vision infinite 0 true
tp @s[team=!debugging] 1003.72 30.43 16025.77 226.10 41.48
execute unless score $ley_line_disorder mem matches 2 run tellraw @s ["",{"text":"\n >> 危险运输 >>  ","color":"light_purple","bold":true},{"text": "作者：小猪之最Thepig","color": "aqua"},"\n\n 前往河对岸，对物资按下 ",{"keybind": "key.use","color": "gold"}," 以获得物资并运回起点！\n 桥会随游戏进程逐渐坍塌，请注意安全！\n\n",{"text": " <未持有物资时只能击退玩家> ","color":"yellow"},{"text": " <持有物资时无法近战攻击>","color":"green"},"\n "]
execute if score $ley_line_disorder mem matches 2 run tellraw @s ["",{"text":"\n >> 危险运输 >>  ","color":"gold","bold":true},{"text": "作者：小猪之最Thepig","color": "aqua"},"\n\n 前往河对岸，对物资按下 ",{"keybind": "key.use","color": "gold"}," 以获得物资并运回起点！\n 桥会随游戏进程逐渐坍塌，请注意安全！\n\n",{"text": " <只能击退玩家> ","color":"yellow"},"\n "]
execute if score $ley_line_disorder mem matches 1 run tellraw @s ["",{"text": " ▶ 幻境干扰: ","color": "#7B68EE"},{"text": "携带物资的玩家移动速度更慢。\n "}]
execute if score $ley_line_disorder mem matches 2 run tellraw @s ["",{"text": " ▶ 幻境干扰: ","color": "#7B68EE"},{"text": "持有物资的玩家也可以攻击其他玩家。\n "}]
execute if score $ley_line_disorder mem matches 3 run tellraw @s ["",{"text": " ▶ 幻境干扰: ","color": "#7B68EE"},{"text": "未持有物资的玩家将持有物资的玩家击落水中后会获得其物资。\n "}]