# 玩家死亡的方法

# 获取自己的标记
function mini:element/game/marker/find
tag @e[tag=found_marker] add self
tag @s add dead_player

# 获取攻击者及其标记
execute store result score $uuid temp run data get entity @e[tag=self,limit=1] data.last_damage[0]
execute store success score $uuid_success temp run data get entity @e[tag=self,limit=1] data.last_damage[0]
execute if score $uuid_success temp matches 1 as @a[team=playing,tag=mini_running] if score @s UUID = $uuid temp run tag @s add killer_player
execute if score $uuid_success temp matches 1 as @a[tag=killer_player] run function mini:element/game/marker/find
execute if score $uuid_success temp matches 1 run tag @e[tag=found_marker] add killer
execute unless entity @e[tag=killer] run scoreboard players set $uuid_success mem 0

# 重置自己的连杀次数和攻击者、元素附着
execute store result score $kill_streak_self mem run data get entity @e[tag=self,limit=1] data.kill_streak
data modify entity @e[tag=self,limit=1] data.kill_streak set value 0
data modify entity @e[tag=self,limit=1] data.last_damage set value []
data modify entity @e[tag=self,limit=1] data.element_attach set value 0

# 使攻击者的连杀次数与击杀数加一
execute store result score $kill_streak mem run data get entity @e[tag=killer,limit=1] data.kill_streak
scoreboard players add $kill_streak mem 1
execute store result entity @e[tag=killer,limit=1] data.kill_streak int 1 run scoreboard players get $kill_streak mem
scoreboard players add @p[tag=killer_player] kills 1

# 根据连杀次数决定死亡提示头
execute unless score $uuid_success temp matches 1 run data modify storage mini:element deathmessage_header set value '[{"text":"","color":"gray"},{"text":">> ","bold":true},"自杀"]'
execute if score $uuid_success temp matches 1 if score $kill_streak mem matches 1 unless score $kill_streak_self mem matches 3.. run data modify storage mini:element deathmessage_header set value '[{"text":"","color":"#FFFF00"},{"text":">> ","bold":true},"击败"]'
execute if score $uuid_success temp matches 1 if score $kill_streak mem matches 1 if score $kill_streak_self mem matches 3.. run data modify storage mini:element deathmessage_header set value '[{"text":"","color":"#FFFF00"},{"text":">> ","bold":true},"终结"]'
execute if score $uuid_success temp matches 1 if score $kill_streak mem matches 2 run data modify storage mini:element deathmessage_header set value '[{"text":"","color":"#FFD700"},{"text":">> ","bold":true},"双杀"]'
execute if score $uuid_success temp matches 1 if score $kill_streak mem matches 3 run data modify storage mini:element deathmessage_header set value '[{"text":"","color":"#FFB90F"},{"text":">> ","bold":true},"三杀"]'
execute if score $uuid_success temp matches 1 if score $kill_streak mem matches 4 run data modify storage mini:element deathmessage_header set value '[{"text":"","color":"#FF8247"},{"text":">> ","bold":true},"四杀"]'
execute if score $uuid_success temp matches 1 if score $kill_streak mem matches 5 run data modify storage mini:element deathmessage_header set value '[{"text":"","color":"#FF6A6A"},{"text":">> ","bold":true},"五杀"]'
execute if score $uuid_success temp matches 1 if score $kill_streak mem matches 6 run data modify storage mini:element deathmessage_header set value '[{"text":"","color":"#EE2C2C"},{"text":">> ","bold":true},"六杀"]'
execute if score $uuid_success temp matches 1 if score $kill_streak mem matches 7 run data modify storage mini:element deathmessage_header set value '[{"text":"","color":"#B03060"},{"text":">> ","bold":true},"七杀"]'
execute if score $uuid_success temp matches 1 if score $kill_streak mem matches 8.. run data modify storage mini:element deathmessage_header set value '[{"text":"","color":"#FF1493"},{"text":">> ","bold":true},"绝杀"]'

# 根据自身标签决定死亡信息
execute unless score $uuid_success temp matches 1 as @e[tag=self,limit=1] run function mini:element/game/damage/death_message_failure
execute if score $uuid_success temp matches 1 as @e[tag=self,limit=1] run function mini:element/game/damage/death_message_success

# 显示死亡信息
tellraw @a [{"nbt":"deathmessage_header","storage": "mini:element","interpret": true},{"text": "  "},{"nbt": "deathmessage","storage": "mini:element","interpret": true,"color": "white"}]
execute if score $uuid_success temp matches 1 as @p[tag=killer_player] run title @s times 0t 3s 5t
execute if score $uuid_success temp matches 1 if score $kill_streak mem matches 1 unless score $kill_streak_self mem matches 3.. as @p[tag=killer_player] run title @s subtitle [{"text":"","color":"#FFFF00"},{"text":">> ","bold":true},"击败"]
execute if score $uuid_success temp matches 1 if score $kill_streak mem matches 1 if score $kill_streak_self mem matches 3.. as @p[tag=killer_player] run title @s subtitle [{"text":"","color":"#FFFF00"},{"text":">> ","bold":true},"终结"]
execute if score $uuid_success temp matches 1 if score $kill_streak mem matches 1 as @p[tag=killer_player] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 1
execute if score $uuid_success temp matches 1 if score $kill_streak mem matches 2 as @p[tag=killer_player] run title @s subtitle [{"text":"","color":"#FFD700"},{"text":">> ","bold":true},"双杀"]
execute if score $uuid_success temp matches 1 if score $kill_streak mem matches 2 as @p[tag=killer_player] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 0.9
execute if score $uuid_success temp matches 1 if score $kill_streak mem matches 3 as @p[tag=killer_player] run title @s subtitle [{"text":"","color":"#FFB90F"},{"text":">> ","bold":true},"三杀"]
execute if score $uuid_success temp matches 1 if score $kill_streak mem matches 3 as @p[tag=killer_player] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 0.85
execute if score $uuid_success temp matches 1 if score $kill_streak mem matches 4 as @p[tag=killer_player] run title @s subtitle [{"text":"","color":"#FF8247"},{"text":">> ","bold":true},"四杀"]
execute if score $uuid_success temp matches 1 if score $kill_streak mem matches 4 as @p[tag=killer_player] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 0.8
execute if score $uuid_success temp matches 1 if score $kill_streak mem matches 5 as @p[tag=killer_player] run title @s subtitle [{"text":"","color":"#FF6A6A"},{"text":">> ","bold":true},"五杀"]
execute if score $uuid_success temp matches 1 if score $kill_streak mem matches 5 as @p[tag=killer_player] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 0.75
execute if score $uuid_success temp matches 1 if score $kill_streak mem matches 6 as @p[tag=killer_player] run title @s subtitle [{"text":"","color":"#EE2C2C"},{"text":">> ","bold":true},"六杀"]
execute if score $uuid_success temp matches 1 if score $kill_streak mem matches 6 as @p[tag=killer_player] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 0.7
execute if score $uuid_success temp matches 1 if score $kill_streak mem matches 7 as @p[tag=killer_player] run title @s subtitle [{"text":"","color":"#B03060"},{"text":">> ","bold":true},"七杀"]
execute if score $uuid_success temp matches 1 if score $kill_streak mem matches 7 as @p[tag=killer_player] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 0.6
execute if score $uuid_success temp matches 1 if score $kill_streak mem matches 8.. as @p[tag=killer_player] run title @s subtitle [{"text":"","color":"#FF1493"},{"text":">> ","bold":true},"绝杀 x",{"score":{"name": "$kill_streak","objective": "mem"}}]
execute if score $uuid_success temp matches 1 if score $kill_streak mem matches 8.. as @p[tag=killer_player] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 0.5
execute if score $uuid_success temp matches 1 as @p[tag=killer_player] at @s run playsound block.anvil.place player @s ~ ~ ~
execute if score $uuid_success temp matches 1 as @p[tag=killer_player] run title @s title ""
effect give @p[tag=killer_player] instant_health 1 1

# 清除自己标记的所有标签
execute as @e[tag=self] run function mini:element/game/marker/remove_all_tags

# 传送玩家并设置重生时间
tp @s 1012.57 72.12 15012.20 317.90 14.98
gamemode spectator @s
tag @s add respawning
scoreboard players set @s countdown_fast 50

# 状态效果
function mini:main/give_effect

# 结束死亡判定
tag @e remove self
tag @e remove killer
tag @a remove killer_player
tag @a remove dead_player