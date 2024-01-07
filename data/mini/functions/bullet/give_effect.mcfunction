# 状态效果
effect give @s saturation infinite 0 true
effect give @s night_vision infinite 0 true
effect give @s resistance infinite 4 true
effect give @s weakness infinite 20 true
effect give @s slow_falling infinite 0 true
execute if score $ley_line_disorder mem matches 3 run effect give @s[team=playing,tag=!rejoining] darkness infinite 0 true
