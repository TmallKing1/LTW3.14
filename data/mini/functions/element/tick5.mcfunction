# 岩浆块上的玩家处理
execute as @a[tag=mini_running] at @s if block ~ ~-1 ~ magma_block run function mini:element/game/element/magma_block

# 水中的玩家处理
execute as @a[tag=mini_running] at @s if block ~ ~ ~ water run function mini:element/game/element/4_hydro_attach

# 哭泣黑曜石上的玩家处理
execute as @a[tag=mini_running] at @s if block ~ ~-1 ~ crying_obsidian run function mini:element/game/element/3_electro_attach