
# 显示层数
scoreboard players reset @a[tag=!mini_running] layer
scoreboard players reset * temp
execute as @a[tag=mini_running] at @s if entity @s[y=35,dy=10] run scoreboard players set @s temp 4
execute as @a[tag=mini_running] at @s if entity @s[y=30,dy=3] run scoreboard players set @s temp 3
execute as @a[tag=mini_running] at @s if entity @s[y=25,dy=3] run scoreboard players set @s temp 2
execute as @a[tag=mini_running] at @s if entity @s[y=20,dy=3] run scoreboard players set @s temp 1
execute as @a[tag=mini_running] run scoreboard players operation @s layer = @s temp
execute as @a[tag=mini_running] if score @s layer_highest < @s layer run scoreboard players operation @s layer_highest = @s layer

# 幻境干扰 1：玩家在第二层及以上时跳跃能力大幅下降
execute if score $ley_line_disorder mem matches 1 as @a[tag=mini_running] if score @s layer matches 2.. run effect give @s jump_boost infinite 253 true
execute if score $ley_line_disorder mem matches 1 as @a[tag=mini_running] unless score @s layer matches 2.. run effect clear @s jump_boost

# 幻境干扰 2：玩家在第二层及以上时速度和跳跃提升
execute if score $ley_line_disorder mem matches 2 as @a[tag=mini_running] if score @s layer matches 2.. run effect give @s jump_boost 1 1
execute if score $ley_line_disorder mem matches 2 as @a[tag=mini_running] if score @s layer matches 2.. run effect give @s speed 1 1

# 进度判断
tag @a[scores={layer=1}] add layer_bottom
execute unless score #gamemode mem matches 2 run advancement grant @a[tag=layer_bottom,tag=mini_running,scores={layer=4}] only ltw:parkour/tnt1
