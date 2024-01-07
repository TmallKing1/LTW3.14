execute if score $ley_line_disorder mem matches 2 store result score $random mem run random value -4..4
execute if score $ley_line_disorder mem matches 2 run scoreboard players operation $countdown_fast mem += $random mem

# 显示时间
execute unless score $ley_line_disorder mem matches 2 run bossbar set mini:yellow name ["爆炸剩余时间 [",{"score":{"name": "$countdown_fast_second","objective": "mem"},"color": "yellow"},{"text": ".","color": "yellow"},{"score":{"name": "$countdown_fast_100ms","objective": "mem"},"color": "yellow"},"]"]
execute unless score $ley_line_disorder mem matches 2 run bossbar set mini:red name ["爆炸剩余时间 [",{"score":{"name": "$countdown_fast_second","objective": "mem"},"color": "red"},{"text": ".","color": "red"},{"score":{"name": "$countdown_fast_100ms","objective": "mem"},"color": "red"},"]"]
execute unless score $ley_line_disorder mem matches 2 run bossbar set mini:blue name ["爆炸剩余时间 [",{"score":{"name": "$countdown_fast_second","objective": "mem"},"color": "aqua"},{"text": ".","color": "aqua"},{"score":{"name": "$countdown_fast_100ms","objective": "mem"},"color": "aqua"},"]"]
execute if score $ley_line_disorder mem matches 2 run bossbar set mini:yellow name ["炸弹稳定度 [",{"score":{"name": "$countdown_fast","objective": "mem"},"color": "yellow"},"]"]
execute if score $ley_line_disorder mem matches 2 run bossbar set mini:red name ["炸弹稳定度 [",{"score":{"name": "$countdown_fast","objective": "mem"},"color": "red"},"]"]
execute if score $ley_line_disorder mem matches 2 run bossbar set mini:blue name ["炸弹稳定度 [",{"score":{"name": "$countdown_fast","objective": "mem"},"color": "aqua"},"]"]

# TNT 颜色
team join gold @e[type=tnt, tag=chain_tnt]

# 玩家 Bossbar 颜色
function mini:chain/game/bossbar_color

# 玩家粒子特效
execute as @a[tag=mini_running] at @s run function mini:chain/game/tnt_indicator

# 爆炸
execute if score $countdown_fast mem matches ..0 run function mini:chain/game/tnt_explode

# 使用 TNT 替换玩家的物品栏
execute as @a[tag=mini_running] unless score @s tntUsed matches 1.. at @s unless data entity @s Inventory[{Slot: 8b, id: "minecraft:chicken_spawn_egg", tag: {game_item: 1b}}] run function mini:chain/game/give_tnt