# 标记玩家
tag @p[distance=..1,tag=mini_running,scores={player_energy=..99},limit=1,sort=nearest] add selected_player

# 随机加分
execute store result score $random mem run random value 10..30
scoreboard players operation @p[tag=selected_player] player_energy += $random mem
scoreboard players set @p[tag=selected_player,scores={player_energy=101..}] player_energy 100

# 显示提示
execute as @p[tag=selected_player] at @s run function lib:sounds/hit

# 取消标记
tag @a remove selected_player

# 杀死自己
kill @s