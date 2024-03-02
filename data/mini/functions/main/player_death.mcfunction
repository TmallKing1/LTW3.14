# 玩家死亡后触发
execute if score $mini_type mem matches 5 run function mini:phantom/player_death
execute if score $mini_type mem matches 8 run function mini:zombie/player_death
execute if score $mini_type mem matches 11 run function mini:boomer/player_death
execute if score $mini_type mem matches 13 run function mini:vase/player_death
execute if score $mini_type mem matches 101 run function mini:iron/player_death
execute if score $mini_type mem matches 102 run function mini:trade/player_death
execute if score $mini_type mem matches 103 run function mini:diamond/player_death
execute if score $mini_type mem matches 104 run function mini:hopper/player_death
execute if score $mini_type mem matches 105 run function mini:bingo/player_death
execute if score $mini_type mem matches 201 run function mini:ass/player_death
execute if score $mini_type mem matches 302 run function mini:element/game/events/player_death
execute if score $mini_type mem matches 303 run function mini:power/player_death

summon creeper ~ ~ ~ {NoAI:true,Tags:["1"],Attributes:[{Base:1000,Name:"generic.max_health"}],Silent:true}