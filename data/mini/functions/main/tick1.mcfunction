function mini:main/watcher_limit
execute if score $mini_type mem matches 2 run function mini:tntrun/tick1
execute if score $mini_type mem matches 3 run function mini:hotpm/tick1
execute if score $mini_type mem matches 4 run function mini:colormatch/tick1
execute if score $mini_type mem matches 5 run function mini:phantom/tick1
execute if score $mini_type mem matches 6 run function mini:koth/tick1
execute if score $mini_type mem matches 7 run function mini:seat/tick1
execute if score $mini_type mem matches 8 run function mini:zombie/tick1
execute if score $mini_type mem matches 9 run function mini:river/tick1
execute if score $mini_type mem matches 10 run function mini:bullet/tick1
execute if score $mini_type mem matches 11 run function mini:boomer/tick1
execute if score $mini_type mem matches 12 run function mini:chain/tick1
execute if score $mini_type mem matches 13 run function mini:vase/tick1
execute if score $mini_type mem matches 14 run function mini:sand/tick1
execute if score $mini_type mem matches 101 run function mini:iron/tick1
execute if score $mini_type mem matches 103 run function mini:diamond/tick1
execute if score $mini_type mem matches 104 run function mini:hopper/tick1
execute if score $mini_type mem matches 201 run function mini:ass/tick1
execute if score $mini_type mem matches 202 run function mini:arrow/tick1
execute if score $mini_type mem matches 301 run function mini:duckrush/tick1
execute if score $mini_type mem matches 302 run function mini:element/tick1
execute if score $mini_type mem matches 303 run function mini:power/tick1