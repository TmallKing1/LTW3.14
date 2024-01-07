# 每个玩家生成矿车
summon chest_minecart 1 0 1 {NoGravity:1b,Tags:["bingo_entity","player_minecart","new_entity"],Invulnerable:1b,Silent:1b,CustomDisplayTile:1b,DisplayState:{Name:"minecraft:beacon"},DisplayOffset: 2,CustomName:'"目标"'}
# 设置对应的积分
scoreboard players operation @e[type=chest_minecart,tag=new_entity] player_id = @s player_id
tag @e remove new_entity