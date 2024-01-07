# 状态效果
effect give @s saturation infinite 0 true
execute unless score $ley_line_disorder mem matches 3 run effect give @s resistance infinite 2 true
execute if score $ley_line_disorder mem matches 3 run effect give @s resistance infinite 3 true
effect give @s night_vision infinite 0 true
effect give @s weakness infinite 9 true