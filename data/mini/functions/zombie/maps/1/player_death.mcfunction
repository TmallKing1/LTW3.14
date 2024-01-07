# 玩家死亡时由玩家自己触发
execute as @s[tag=mini_running] run function mini:main/player_failed
tp @s[team=playing] 1019.99 15.02 12025.66 142.95 17.10
execute as @a at @s run function lib:sounds/error