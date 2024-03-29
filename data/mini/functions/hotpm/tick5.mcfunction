# 传送
# execute as @a[gamemode=!spectator] at @s if block ~ ~-1 ~ minecraft:barrier run tp @s ~ ~17.5 ~
# execute as @a[gamemode=!spectator] at @s if block ~ ~-1 ~ minecraft:barrier run function lib:sounds/teleport

# 给持有者播放音效
execute as @a[tag=pm_holding] at @s run playsound minecraft:entity.creeper.primed player @s 0 1000000 0 1000000
execute as @a[tag=pm_holding] at @s run playsound minecraft:entity.creeper.primed player @a[distance=0.01..] ~ ~ ~ 0.8
execute as @a[tag=pm_holding] at @s run playsound minecraft:entity.creeper.primed player @a[distance=0.01..] ~ ~ ~ 0.4

# 土豆的加速效果
execute unless score $ley_line_disorder mem matches 3 run effect give @a[tag=pm_holding] speed 1 2 true
execute if score $ley_line_disorder mem matches 3 run effect give @a[tag=pm_holding] speed 1 4 true

# 全局加速效果
execute if score $ley_line_disorder mem matches 3 run effect give @a[tag=mini_running,tag=!pm_holding] speed 1 2 true