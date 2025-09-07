# 复活
execute if score @s layer_highest matches ..1 run tp @s 1019.5 25.5 2020.5
execute if score @s layer_highest matches 2 run tp @s 1019.5 30.5 2020.5
execute if score @s layer_highest matches 3 run tp @s 1019.5 35.5 2020.5

# 显示提示与给予药水效果
title @s times 10t 40t 10t
title @s subtitle "请在 5 秒内找到合适的落脚点"
title @s title {"text": "你已复活","color": "green"}
execute at @s run function lib:sounds/error
effect give @s blindness 1 0 true
effect give @s levitation 5 255