# 多图模式
execute if score $map mem matches 1 run function mini:zombie/maps/1/player_intro
execute if score $map mem matches 2 run function mini:zombie/maps/2/player_intro

# 幻境干扰
execute if score $ley_line_disorder mem matches 1 run tellraw @s ["",{"text": " ▶ 幻境干扰: ","color": "#7B68EE"},{"text": "玩家在该局游戏中会持续获得失明效果。\n "}]
execute if score $ley_line_disorder mem matches 2 run tellraw @s ["",{"text": " ▶ 幻境干扰: ","color": "#7B68EE"},{"text": "所有玩家与僵尸都会获得 20% 的近战伤害加成。\n "}]
execute if score $ley_line_disorder mem matches 3 run tellraw @s ["",{"text": " ▶ 幻境干扰: ","color": "#7B68EE"},{"text": "僵尸生命值大幅提高且不掉落能量值，努力活到最后吧！\n "}]

# 夜视
effect give @s night_vision 100000 0 true