# 状态效果
effect give @s saturation infinite 0 true
effect give @s night_vision infinite 0 true
effect give @s resistance infinite 4 true
execute unless score $ley_line_disorder mem matches 3 run effect give @s speed infinite 1 true
execute unless score $ley_line_disorder mem matches 3 run effect give @s jump_boost infinite 1 true