# 玩家失败时由玩家自己触发
tag @s add lose_heart

# 移除物资tag
execute if score $ley_line_disorder mem matches 3 as @s[tag=has_mats_basic] on attacker run tag @s[tag=!has_mats] add has_mats_basic
execute if score $ley_line_disorder mem matches 3 as @s[tag=has_mats_basic] on attacker run tellraw @s[tag=!has_mats] ["",{"text": ">> ","color": "gold","bold": true},"你获得了 ",{"selector":"@a[tag=lose_heart]","color": "gold"}," 的普通物资！"]
execute if score $ley_line_disorder mem matches 3 as @s[tag=has_mats_speci] on attacker run tag @s[tag=!has_mats] add has_mats_speci
execute if score $ley_line_disorder mem matches 3 as @s[tag=has_mats_speci] on attacker run tellraw @s[tag=!has_mats] ["",{"text": ">> ","color": "gold","bold": true},"你获得了 ",{"selector":"@a[tag=lose_heart]","color": "gold"}," 的奖励物资！"]
execute if score $ley_line_disorder mem matches 3 as @s[tag=has_mats] on attacker at @s run function lib:sounds/hit
execute if score $ley_line_disorder mem matches 3 as @s[tag=has_mats] on attacker run tag @s[tag=!has_mats] add has_mats
tag @s remove has_mats
tag @s remove has_mats_basic
tag @s remove has_mats_speci

# 清除物资物品
clear @s chest{game_item: 1b}
clear @s ender_chest{game_item: 1b}

# 传送回起始点
execute unless score $ley_line_disorder mem matches -1 run tp @s 1004 18 ~
execute if score $ley_line_disorder mem matches -1 run tp @s[tag=!mats_area] 1005 18 ~
execute if score $ley_line_disorder mem matches -1 run tp @s[tag=mats_area] 1026 18 ~

# 减少生命或能量值
execute unless score $ley_line_disorder mem matches -1 run function mini:main/player_lose_heart
execute if score $ley_line_disorder mem matches -1 store result score $random mem run random value 50..100
execute if score $ley_line_disorder mem matches -1 run scoreboard players operation @s power_count -= $random mem
execute unless score $ley_line_disorder mem matches -1 run tellraw @a ["",{"text":">> ","color":"gold","bold": true},{"selector":"@s","color":"gold"}," 掉入了河中!"]
execute if score $ley_line_disorder mem matches -1 run tellraw @a ["",{"text":">> ","color":"gold","bold": true},{"selector":"@s","color":"gold"}," 掉入了河中，损失了 ",{"score":{"name": "$random","objective": "mem"},"color": "gold"}," 能量值!"]

tag @s remove lose_heart