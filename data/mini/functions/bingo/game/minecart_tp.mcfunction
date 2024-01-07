tag @s add tempPlayerTp

# 杀死旧矿车并生成新的
scoreboard players set $success mem 0
execute store result score $success mem as @e[tag=old_mc] if score @s player_id = @a[tag=tempPlayerTp,limit=1] player_id run kill
execute if score $success mem matches 1.. at @s run function mini:bingo/game/hmc_init

# 传送
execute as @e[type=chest_minecart,tag=player_minecart] if score @s player_id = @a[tag=tempPlayerTp,limit=1] player_id run function mini:bingo/game/minecart_tp2

# 更新物品
execute as @e[type=chest_minecart,tag=player_minecart] if score @s player_id = @a[tag=tempPlayerTp,limit=1] player_id run function mini:bingo/game/minecart_update_item

tag @s remove tempPlayerTp
