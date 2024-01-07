# 给充能者播放音效
#execute as @a[tag=powered,tag=mini_running] at @s run playsound minecraft:entity.creeper.primed player @s 0 1000000 0 1000000
execute as @a[tag=powered,tag=mini_running] at @s run playsound minecraft:entity.creeper.primed player @a[distance=0.01..] ~ ~ ~ 0.8
execute as @a[tag=powered,tag=mini_running] at @s run playsound minecraft:entity.creeper.primed player @a[distance=0.01..] ~ ~ ~ 0.4