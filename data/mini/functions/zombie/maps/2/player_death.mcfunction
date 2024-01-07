# 玩家死亡时由玩家自己触发
execute as @s[tag=mini_running] run function mini:main/player_failed
tp @s[team=playing] 2011.35 2.66 11986.82 359.54 1.93
execute as @a at @s run function lib:sounds/error