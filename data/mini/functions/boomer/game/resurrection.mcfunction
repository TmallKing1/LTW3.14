# 流失能量值并重生
execute store result score $random mem run random value 100..150
scoreboard players operation @s power_count -= $random mem
tp @s 2016.0 28.5 1016.0

# 显示提示与给予药水效果
tellraw @s ["",{"text": ">> ","color": "aqua","bold": true},{"text": "你已复活，请在 5 秒内找到合适的落脚点！","color": "aqua"}]
execute at @s run function lib:sounds/error
function mini:main/give_effect
effect give @s blindness 1 0 true
effect give @s levitation 5 255