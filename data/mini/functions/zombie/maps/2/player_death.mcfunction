# 玩家死亡时由玩家自己触发
execute as @s[tag=mini_running] run function mini:main/player_failed
execute if score $ley_line_disorder mem matches -1 run effect give @a[tag=mini_running] instant_health 1 10