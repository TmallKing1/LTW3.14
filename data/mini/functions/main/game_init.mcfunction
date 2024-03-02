# 计分板初始化
scoreboard players reset * mini_score
scoreboard players reset * mini_heart
scoreboard players reset * health

# 重置幻境干扰
scoreboard players set $ley_line_disorder mem 0
scoreboard players set $period_lld_max mem 0
scoreboard players set $period_lld_warn mem 0
scoreboard players set $period_lld mem 0

# 小游戏初始化
execute if score $mini_type mem matches 0 run function mini:parkour_old/game_init
execute if score $mini_type mem matches 1 run function mini:parkour/game_init
execute if score $mini_type mem matches 2 run function mini:tntrun/game_init
execute if score $mini_type mem matches 3 run function mini:hotpm/game_init
execute if score $mini_type mem matches 4 run function mini:colormatch/game_init
execute if score $mini_type mem matches 5 run function mini:phantom/game_init
execute if score $mini_type mem matches 6 run function mini:koth/game_init
execute if score $mini_type mem matches 7 run function mini:seat/game_init
execute if score $mini_type mem matches 8 run function mini:zombie/game_init
execute if score $mini_type mem matches 9 run function mini:river/game_init
execute if score $mini_type mem matches 10 run function mini:bullet/game_init
execute if score $mini_type mem matches 11 run function mini:boomer/game_init
execute if score $mini_type mem matches 12 run function mini:chain/game_init
execute if score $mini_type mem matches 13 run function mini:vase/game_init
execute if score $mini_type mem matches 101 run function mini:iron/game_init
execute if score $mini_type mem matches 102 run function mini:trade/game_init
execute if score $mini_type mem matches 103 run function mini:diamond/game_init
execute if score $mini_type mem matches 104 run function mini:hopper/game_init
execute if score $mini_type mem matches 105 run function mini:bingo/game_init
execute if score $mini_type mem matches 201 run function mini:ass/game_init
execute if score $mini_type mem matches 202 run function mini:arrow/game_init
execute if score $mini_type mem matches 301 run function mini:duckrush/game_init
execute if score $mini_type mem matches 302 run function mini:element/game_init
execute if score $mini_type mem matches 303 run function mini:power/game_init

# 经典模式没有幻境干扰
execute if score #gamemode mem matches 1 run scoreboard players set $ley_line_disorder mem 0
execute if score #gamemode mem matches 1 run scoreboard players set $period_lld mem 0
execute if score #gamemode mem matches 1 run scoreboard players set $period_lld_max mem 0
execute if score #gamemode mem matches 1 run scoreboard players set $period_lld_warn mem 0