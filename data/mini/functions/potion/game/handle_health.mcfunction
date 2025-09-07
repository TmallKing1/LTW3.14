# 计算当前生命值与 20 的差
scoreboard players operation $health_temp mem = @s health
scoreboard players operation $health_temp mem -= #20 mem

# 将差值加到虚拟生命上
scoreboard players operation @s health_virt += $health_temp mem

# 将自己的生命值回满
effect give @s instant_health 1 5

# 若虚拟生命小于等于零，则淘汰
execute if score @s health_virt matches ..0 run function mini:main/player_failed