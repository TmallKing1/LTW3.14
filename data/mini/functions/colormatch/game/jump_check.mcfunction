# 检查玩家的 OnGround 标签值，若标签值为 0 则添加 on_air 记分板标签
execute if data entity @s[tag=!on_air] {OnGround: 0b} run return run tag @s add on_air
execute if entity @s[tag=color_match_fall] run tag @s remove on_air
execute if entity @s[tag=color_match_fall] run return fail
execute unless entity @s[tag=on_air] run return fail
execute unless data entity @s {OnGround: 1b} run return fail

# 随机指定一个方块进行替换
execute store result score $random mem run random value 1..8
execute if score $random mem matches 1 unless block ~ 16 ~ air run setblock ~ 16 ~ acacia_planks
execute if score $random mem matches 2 unless block ~ 16 ~ air run setblock ~ 16 ~ birch_planks
execute if score $random mem matches 3 unless block ~ 16 ~ air run setblock ~ 16 ~ soul_soil
execute if score $random mem matches 4 unless block ~ 16 ~ air run setblock ~ 16 ~ crimson_planks
execute if score $random mem matches 5 unless block ~ 16 ~ air run setblock ~ 16 ~ warped_planks
execute if score $random mem matches 6 unless block ~ 16 ~ air run setblock ~ 16 ~ purpur_block
execute if score $random mem matches 7 unless block ~ 16 ~ air run setblock ~ 16 ~ bricks
execute if score $random mem matches 8 unless block ~ 16 ~ air run setblock ~ 16 ~ mossy_cobblestone
tag @s remove on_air

execute if score $color_match_type mem matches 1 run return fail
execute unless score $random mem = $color_match_floor_real mem positioned ~ 16 ~ run return run setblock ~-49 ~-5 ~ air

execute if score $random mem matches 1 positioned ~ 16 ~ run setblock ~-49 ~-5 ~ acacia_planks
execute if score $random mem matches 2 positioned ~ 16 ~ run setblock ~-49 ~-5 ~ birch_planks
execute if score $random mem matches 3 positioned ~ 16 ~ run setblock ~-49 ~-5 ~ soul_soil
execute if score $random mem matches 4 positioned ~ 16 ~ run setblock ~-49 ~-5 ~ crimson_planks
execute if score $random mem matches 5 positioned ~ 16 ~ run setblock ~-49 ~-5 ~ warped_planks
execute if score $random mem matches 6 positioned ~ 16 ~ run setblock ~-49 ~-5 ~ purpur_block
execute if score $random mem matches 7 positioned ~ 16 ~ run setblock ~-49 ~-5 ~ bricks
execute if score $random mem matches 8 positioned ~ 16 ~ run setblock ~-49 ~-5 ~ mossy_cobblestone
