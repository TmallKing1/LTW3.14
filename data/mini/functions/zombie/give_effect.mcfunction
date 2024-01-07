# 状态效果
effect give @s saturation infinite 0 true
effect give @s resistance infinite 1 true
effect give @s night_vision infinite 0 true
execute if score $ley_line_disorder mem matches 2 as @a[tag=mini_running] run attribute @s generic.attack_damage modifier add 12bc0778-5585-498c-a1d4-993156bd3ff6 "" 0.2 multiply