# 玩家死亡判断
execute as @a[tag=mini_running] at @s if block ~ ~-1 ~ barrier unless score $ley_line_disorder mem matches -1 run function mini:tntrun/player_failed
execute as @a[tag=mini_running] at @s if block ~ ~-1 ~ barrier if score $ley_line_disorder mem matches -1 run function mini:boomer/game/resurrection
execute as @e[type=creeper] at @s if block ~ ~-1 ~ barrier run kill

# 使用了TNT
execute as @a[tag=mini_running,scores={TNTUse=1..}] run function mini:boomer/game/use_tnt
# 然后再给你一个好玩意
execute as @a[tag=mini_running,scores={countdown_fast=0}] unless data entity @s Inventory[{Slot:8b,id:"minecraft:tnt",tag:{game_item:1b}}] run function mini:boomer/game/give_tnt

# 同步生命值
scoreboard players reset * health_alive
scoreboard players set @a[gamemode=!spectator] health_alive 20
execute as @a[gamemode=!spectator,scores={health=1..}] run scoreboard players operation @s health_alive = @s health

# 幻境干扰
execute if score $ley_line_disorder mem matches 2 as @a[tag=mini_running] if score @s damageTaken matches 1.. run effect give @s levitation 1 2
execute if score $ley_line_disorder mem matches -1 as @a[tag=mini_running] if score @s damageTaken matches 1.. run function mini:boomer/game/lose_power
execute if score $ley_line_disorder mem matches -1 as @a[tag=mini_running] if score @s damageTaken matches 30.. at @s run summon creeper ~ ~ ~ {powered:1b}
scoreboard players set @a damageTaken 0