# 复制备份
scoreboard players operation $boom_count1 mem = $boom_count mem

# 计算每个玩家距离离自己最近的 TNT 的距离
execute as @a[tag=mini_running] at @s run function mini:chain/game/calculate_distance

# 递归获取距离最小的玩家
execute if score $boom_count1 mem matches 1.. run function mini:chain/game/get_minimum

# 爆炸
tellraw @a ["", {"text": ">> ","color": "gold","bold": true}, {"selector": "@a[tag=targeted_player]","color": "gold"}, {"text": " 裂开了！"}]
tag @a[tag=targeted_player] add chain_hurt
execute as @a[tag=targeted_player] run function mini:main/player_lose_heart
tag @a remove targeted_player

# 特效
execute as @e[tag=chain_tnt] at @s run particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force @a
execute as @e[tag=chain_tnt] at @s run playsound entity.generic.explode block @a ~ ~ ~

# 清理原有 TNT
kill @e[tag=chain_tnt]

# 若还有两名以上玩家，则开始新的一轮
execute if score $player_alive mem matches 2.. run function mini:chain/game/start_round