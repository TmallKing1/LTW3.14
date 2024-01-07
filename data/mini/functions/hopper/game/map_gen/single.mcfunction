# 随机生成单个方块
execute store result score $random mem run random value 1..100
execute if score $random mem matches 1..24 run function mini:hopper/game/map_gen/single1
execute if score $random mem matches 25..76 run function mini:hopper/game/map_gen/single2
execute if score $random mem matches 77..100 run function mini:hopper/game/map_gen/single3

