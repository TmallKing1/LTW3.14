# 刷新单个玩家背包中的魔法符咒与魔法精华

scoreboard players add @s primogem 0
clear @s shaper_armor_trim_smithing_template
clear @s ghast_tear

# 获取魔法符咒数，存于 temp
scoreboard players operation @s temp = @s primogem
scoreboard players operation @s temp /= #64 mem
# 给予魔法符咒
execute if score @s temp matches 1.. at @s run function item:shop/summon_spell
# 获取魔法精华数，存于 temp
scoreboard players operation @s temp = @s primogem
scoreboard players operation @s temp %= #64 mem
# 给予魔法精华
execute if score @s temp matches 1.. at @s run function item:shop/summon_essence