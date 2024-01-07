scoreboard players set $new_item_cd mem 0

# 生成两个物资
execute as @e[type=interaction,tag=river_entity,tag=speci,tag=!mats_exist] at @s run function mini:river/game/new_mats_single

# 显示提示
execute unless score $double_reward mem matches 1 run title @a subtitle {"text":"❇ 奖励物资已在特殊生成点生成 ❇","color":"aqua"}
execute if score $double_reward mem matches 1 run title @a subtitle {"text":"❇ 奖励物资已在特殊生成点生成 ❇","color":"light_purple"}
execute unless score $speci_hinted mem matches 1 run tellraw @a[team=!debugging] ["",{"text": ">> ","color": "aqua","bold": true},{"text": "将奖励物资运回起点来查看物品实际内容！"}]
execute unless score $speci_hinted mem matches 1 run scoreboard players set $speci_hinted mem 1
title @a times 1t 60t 3t
title @a title ""
playsound minecraft:entity.player.levelup player @a 0 1000000 0 1000000 2