
# 显示层数
scoreboard players reset @a[tag=!mini_running] layer
scoreboard players reset * temp
execute as @a[tag=mini_running] at @s if entity @s[y=27,dy=10] run scoreboard players set @s temp 3
execute as @a[tag=mini_running] at @s if entity @s[y=19,dy=7] run scoreboard players set @s temp 2
execute as @a[tag=mini_running] at @s if entity @s[y=11,dy=7] run scoreboard players set @s temp 1
execute as @a[tag=mini_running] run scoreboard players operation @s layer = @s temp