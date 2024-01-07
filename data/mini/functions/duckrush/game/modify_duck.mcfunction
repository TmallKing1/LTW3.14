tp @s ~ 6 ~
data modify entity @s CustomName set value '["鸭子"]'
data modify entity @s Invulnerable set value 1b
# 鸭子在 2s（自然生成）或0.3s（玩家放置） 后取消无害化
scoreboard players set @s[tag=!from_player] countdown_fast 20
scoreboard players set @s[tag=from_player] countdown_fast 3
# 鸭子不可自行移动
effect give @s slowness infinite 20 true
# 鸭子发光
team join green @s
data modify entity @s Glowing set value 1b
# 如果满足条件（在 tick20 中检查），则刷出奖励鸭子
execute if score #new_item mem matches 0 run tellraw @a ["\n",{"text": ">> ","color":"red","bold": true},{"text": "用水桶淹没红色鸭子, 获取奖励物资！\n ","color":"red"}]
execute if score #new_item mem matches 0 run title @a times 1t 80t 3t
execute if score #new_item mem matches 0 run title @a title ""
execute if score #new_item mem matches 0 run playsound minecraft:entity.player.levelup player @a 0 1000000 0 1000000 2
execute if score #new_item mem matches 0 run tag @s add bonus_duck
execute if score #new_item mem matches 0 run scoreboard players set $new_item_cd mem 0
# 修改奖励鸭子的属性
team join red @s[tag=bonus_duck]
# 实现鸭子速度
execute as @s[tag=!to_player,tag=!from_player] run function mini:duckrush/game/duck_change_direction/random
execute as @s[tag=from_player] run function mini:duckrush/game/duck_change_direction/from_player
execute as @s[tag=to_player] run function mini:duckrush/game/duck_change_direction/to_player

tag @s remove new_duck