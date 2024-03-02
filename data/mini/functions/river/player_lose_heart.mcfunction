# 玩家失败时由玩家自己触发
tag @s add lose_heart
tellraw @a ["",{"text":">> ","color":"gold","bold": true},{"selector":"@s","color":"gold"}," 掉入了河中!"]

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
tp @s 1004 18 ~

# 减少生命
function mini:main/player_lose_heart
tag @s remove lose_heart