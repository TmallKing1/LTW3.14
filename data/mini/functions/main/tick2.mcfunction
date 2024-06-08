execute if score $mini_type mem matches 0 run function mini:parkour_old/tick2
execute if score $mini_type mem matches 1 run function mini:parkour/tick2
execute if score $mini_type mem matches 2 run function mini:tntrun/tick2
execute if score $mini_type mem matches 3 run function mini:hotpm/tick2
execute if score $mini_type mem matches 4 run function mini:colormatch/tick2
execute if score $mini_type mem matches 5 run function mini:phantom/tick2
execute if score $mini_type mem matches 6 run function mini:koth/tick2
execute if score $mini_type mem matches 7 run function mini:seat/tick2
execute if score $mini_type mem matches 8 run function mini:zombie/tick2
execute if score $mini_type mem matches 9 run function mini:river/tick2
execute if score $mini_type mem matches 10 run function mini:bullet/tick2
execute if score $mini_type mem matches 11 run function mini:boomer/tick2
execute if score $mini_type mem matches 12 run function mini:chain/tick2
execute if score $mini_type mem matches 13 run function mini:vase/tick2
execute if score $mini_type mem matches 14 run function mini:sand/tick2
execute if score $mini_type mem matches 101 run function mini:iron/tick2
execute if score $mini_type mem matches 102 run function mini:trade/tick2
execute if score $mini_type mem matches 103 run function mini:diamond/tick2
execute if score $mini_type mem matches 104 run function mini:hopper/tick2
execute if score $mini_type mem matches 105 run function mini:bingo/tick2
execute if score $mini_type mem matches 201 run function mini:ass/tick2
execute if score $mini_type mem matches 202 run function mini:arrow/tick2
execute if score $mini_type mem matches 301 run function mini:duckrush/tick2
execute if score $mini_type mem matches 302 run function mini:element/tick2
execute if score $mini_type mem matches 303 run function mini:power/tick2

# 幻境干扰时间变动
execute if score $period_lld_max mem matches 1.. run function mini:main/lld/period_bossbar