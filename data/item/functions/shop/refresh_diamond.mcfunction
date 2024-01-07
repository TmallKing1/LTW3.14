# 刷新单个玩家背包中的钻石

scoreboard players add @s donate_diamond 0
clear @s diamond_block
clear @s diamond

# 获取钻石块数，存于 temp
scoreboard players operation @s temp = @s donate_diamond
scoreboard players operation @s temp /= #9 mem
# 给予钻石块
execute if score @s temp matches 1.. at @s run function item:shop/summon_diamond_block
# 获取钻石数，存于 temp
scoreboard players operation @s temp = @s donate_diamond
scoreboard players operation @s temp %= #9 mem
# 给予钻石
execute if score @s temp matches 1.. at @s run function item:shop/summon_diamond
