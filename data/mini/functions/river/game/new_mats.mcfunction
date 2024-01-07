# 生成物资
execute as @e[type=interaction,tag=river_entity,tag=basic,tag=!mats_exist] at @s run function mini:river/game/new_mats_single

# 显示提示
tellraw @a[team=!debugging] ["",{"text": ">> ","color": "gold","bold": true},{"text": "新的物资已经生成！","color": "gold"}]
execute as @a[team=!debugging] at @s run function lib:sounds/curse