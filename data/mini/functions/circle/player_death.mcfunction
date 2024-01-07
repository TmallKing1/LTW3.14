# 玩家死亡的方法

# 标记自身
tag @s add dead_player

# 标记攻击者
execute as @a[team=playing] if score @s UUID = @p[tag=dead_player] last_damage_UUID run tag @s add killer_player

# 使攻击者的连杀次数与击杀数加一
scoreboard players add @a[tag=killer_player] kill_streak 1
scoreboard players add @a[tag=killer_player] kills 1

# 根据连杀次数决定死亡提示头
execute unless entity @a[tag=killer_player] run data modify storage mini:circle deathmessage_header set value '[{"text":"","color":"gray"},{"text":">> ","bold":true},"自杀"]'
execute as @a[tag=killer_player] if score @s kill_streak matches 1 unless score @p[tag=dead_player] kill_streak matches 3.. run data modify storage mini:circle deathmessage_header set value '[{"text":"","color":"#FFFF00"},{"text":">> ","bold":true},"击败"]'
execute as @a[tag=killer_player] if score @s kill_streak matches 1 if score @p[tag=dead_player] kill_streak matches 3.. run data modify storage mini:circle deathmessage_header set value '[{"text":"","color":"#FFFF00"},{"text":">> ","bold":true},"终结"]'
execute as @a[tag=killer_player] if score @s kill_streak matches 2 run data modify storage mini:circle deathmessage_header set value '[{"text":"","color":"#FFD700"},{"text":">> ","bold":true},"双杀"]'
execute as @a[tag=killer_player] if score @s kill_streak matches 3 run data modify storage mini:circle deathmessage_header set value '[{"text":"","color":"#FFB90F"},{"text":">> ","bold":true},"三杀"]'
execute as @a[tag=killer_player] if score @s kill_streak matches 4 run data modify storage mini:circle deathmessage_header set value '[{"text":"","color":"#FF8247"},{"text":">> ","bold":true},"四杀"]'
execute as @a[tag=killer_player] if score @s kill_streak matches 5 run data modify storage mini:circle deathmessage_header set value '[{"text":"","color":"#FF6A6A"},{"text":">> ","bold":true},"五杀"]'
execute as @a[tag=killer_player] if score @s kill_streak matches 6 run data modify storage mini:circle deathmessage_header set value '[{"text":"","color":"#EE2C2C"},{"text":">> ","bold":true},"六杀"]'
execute as @a[tag=killer_player] if score @s kill_streak matches 7 run data modify storage mini:circle deathmessage_header set value '[{"text":"","color":"#B03060"},{"text":">> ","bold":true},"七杀"]'
execute as @a[tag=killer_player] if score @s kill_streak matches 8.. run data modify storage mini:circle deathmessage_header set value '[{"text":"","color":"#FF1493"},{"text":">> ","bold":true},"绝杀"]'

# 根据自身标签决定死亡信息
execute unless entity @a[tag=killer_player] as @p[tag=dead_player] run function mini:circle/game/death_message_failure
execute if entity @a[tag=killer_player] as @p[tag=dead_player] run function mini:circle/game/death_message_success

# 显示死亡信息
tellraw @a [{"nbt":"deathmessage_header","storage": "mini:circle","interpret": true},{"text": "  "},{"nbt": "deathmessage","storage": "mini:circle","interpret": true,"color": "white"}]
execute as @a[tag=killer_player] run title @s times 0t 3s 5t
execute as @a[tag=killer_player] if score @s kill_streak matches 1 unless score @p[tag=dead_player] kill_streak matches 3.. run title @s subtitle [{"text":"","color":"#FFFF00"},{"text":">> ","bold":true},"击败"]
execute as @a[tag=killer_player] if score @s kill_streak matches 1 if score @p[tag=dead_player] kill_streak matches 3.. run title @s subtitle [{"text":"","color":"#FFFF00"},{"text":">> ","bold":true},"终结"]
execute as @a[tag=killer_player] if score @s kill_streak matches 1 at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 1
execute as @a[tag=killer_player] if score @s kill_streak matches 2 run title @s subtitle [{"text":"","color":"#FFD700"},{"text":">> ","bold":true},"双杀"]
execute as @a[tag=killer_player] if score @s kill_streak matches 2 at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 0.9
execute as @a[tag=killer_player] if score @s kill_streak matches 3 run title @s subtitle [{"text":"","color":"#FFB90F"},{"text":">> ","bold":true},"三杀"]
execute as @a[tag=killer_player] if score @s kill_streak matches 3 at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 0.85
execute as @a[tag=killer_player] if score @s kill_streak matches 4 run title @s subtitle [{"text":"","color":"#FF8247"},{"text":">> ","bold":true},"四杀"]
execute as @a[tag=killer_player] if score @s kill_streak matches 4 at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 0.8
execute as @a[tag=killer_player] if score @s kill_streak matches 5 run title @s subtitle [{"text":"","color":"#FF6A6A"},{"text":">> ","bold":true},"五杀"]
execute as @a[tag=killer_player] if score @s kill_streak matches 5 at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 0.75
execute as @a[tag=killer_player] if score @s kill_streak matches 6 run title @s subtitle [{"text":"","color":"#EE2C2C"},{"text":">> ","bold":true},"六杀"]
execute as @a[tag=killer_player] if score @s kill_streak matches 6 at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 0.7
execute as @a[tag=killer_player] if score @s kill_streak matches 7 run title @s subtitle [{"text":"","color":"#B03060"},{"text":">> ","bold":true},"七杀"]
execute as @a[tag=killer_player] if score @s kill_streak matches 7 at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 0.6
execute as @a[tag=killer_player] if score @s kill_streak matches 8.. run title @s subtitle [{"text":"","color":"#FF1493"},{"text":">> ","bold":true},"绝杀 x",{"score":{"name": "@s","objective": "kill_streak"}}]
execute as @a[tag=killer_player] if score @s kill_streak matches 8.. at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 0.5
execute as @a[tag=killer_player] at @s run playsound block.anvil.place player @s ~ ~ ~
execute as @a[tag=killer_player] run title @s title ""
effect give @a[tag=killer_player] regeneration 2 3

# 重置自己的攻击者
scoreboard players reset @s last_damage_UUID
scoreboard players reset @s last_damage_type

# 传送玩家并设置重生时间
tp @s 934.72 31.30 17046.39 -450.53 16.39
gamemode spectator @s
tag @s add respawning
scoreboard players set @s countdown_fast 50

# 状态效果
function mini:main/give_effect

# 结束死亡判定
tag @a remove killer_player
tag @a remove dead_player