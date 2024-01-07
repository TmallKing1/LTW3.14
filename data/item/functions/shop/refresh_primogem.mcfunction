# 刷新单个玩家背包中的纠缠之缘与原石

scoreboard players add @s primogem 0
clear @s pink_dye
clear @s nether_star

# 获取纠缠之缘数，存于 temp
scoreboard players operation @s temp = @s primogem
scoreboard players operation @s temp /= #64 mem
# 给予纠缠之缘
execute if score @s temp matches 1.. at @s run function item:shop/summon_intertwined_fate
# 获取原石数，存于 temp
scoreboard players operation @s temp = @s primogem
scoreboard players operation @s temp %= #64 mem
# 给予原石
execute if score @s temp matches 1.. at @s run function item:shop/summon_primogem