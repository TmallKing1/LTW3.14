# 设置玩家分数
execute unless score $ley_line_disorder mem matches 4 run scoreboard players set @s countdown_fast 20
execute if score $ley_line_disorder mem matches 4 run scoreboard players set @s countdown_fast 28
# 幻境干扰 3 处理
execute if score $ley_line_disorder mem matches 3 at @s run function mini:ass/game/lld/3_throw
execute if score $ley_line_disorder mem matches -1 unless score @s creeperUse matches 1.. at @s run function mini:ass/game/lld/3_throw

scoreboard players reset @s creeperUse
scoreboard players add @s creeperUsed 1

# 清除刷怪蛋以防bug
clear @s creeper_spawn_egg{game_item: 1b}


# 设置苦力怕的归属
execute if entity @e[type=creeper,limit=1,sort=nearest,tag=!complete_rename] run function mini:ass/game/rename_creeper