# 召唤 2 只僵尸
execute positioned 1006.0 21.0 12021.0 run function mini:zombie/game/summon
execute positioned 1019.0 21.0 12006.0 run function mini:zombie/game/summon

# 把只因干掉
kill @e[type=chicken]

# 召唤完成后若已有僵尸 < 玩家人数 * 5，则下一次召唤间隔为 2 秒（1-3人）或 1.5 秒（4-6人）或 1 秒（7-8人），否则为 8 秒
function mini:main/update_player_count
scoreboard players operation #count mem = $player_alive mem
scoreboard players operation #count mem *= #5 mem
execute as @e[type=zombie] run scoreboard players remove #count mem 1
execute if score #count mem matches 1.. if score $player_alive mem matches 1..3 run scoreboard players set $countdown_fast mem 20
execute if score #count mem matches 1.. if score $player_alive mem matches 4..6 run scoreboard players set $countdown_fast mem 15
execute if score #count mem matches 1.. if score $player_alive mem matches 7..8 run scoreboard players set $countdown_fast mem 10
execute if score #count mem matches ..0 run scoreboard players set $countdown_fast mem 80
