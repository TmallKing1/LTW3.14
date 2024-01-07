# 增加抽取次数
scoreboard players add @s wish_total 1
scoreboard players add @s wish_five 1
scoreboard players add @s wish_four 1

# 加个标签
tag @s add wishing

# 计算概率
### 五星概率
scoreboard players set $five_pos temp 6
scoreboard players operation $t temp = @s wish_five
scoreboard players remove $t temp 73
execute if score $t temp matches 1.. run function item:powerup/wish/calculate_five
execute if score $four_pos temp matches 1000.. run scoreboard players set $four_pos temp 1000
scoreboard players reset $t temp
### 四星概率
execute if score @s wish_four matches 1..8 run scoreboard players set $four_pos temp 950
execute if score @s wish_four matches 9 run scoreboard players set $four_pos temp 440
execute if score @s wish_four matches 10.. run scoreboard players set $four_pos temp 1

# 抽取
execute store result score $random mem run random value 1..1000
execute if score $random mem matches 1..1000 if score $random mem <= $five_pos temp run function item:powerup/wish/wish_five
execute if score $random mem matches 1..1000 if score $random mem > $five_pos temp if score $random mem >= $four_pos temp run function item:powerup/wish/wish_four
execute if score $random mem matches 1..1000 if score $random mem > $five_pos temp if score $random mem < $four_pos temp run function item:powerup/wish/wish_three

# 删掉标签
tag @s remove wishing

# 若抽十连则继续
scoreboard players remove $wish_time temp 1
execute if score $wish_time temp matches 1.. at @s run function item:powerup/wish/wish_trigger