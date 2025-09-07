
# 随机时间
execute store result score $random mem run random value -4..4
scoreboard players operation $countdown_fast mem += $random mem
execute if score $countdown_fast mem matches ..0 run scoreboard players set $countdown_fast mem 0

# 爆炸
execute if score $countdown_fast mem matches 0 if entity @a[tag=pm_holding] unless score $ley_line_disorder mem matches -1 run function mini:hotpm/player_lose_heart
execute if score $countdown_fast mem matches 0 if entity @a[tag=pm_holding] if score $ley_line_disorder mem matches -1 run function mini:hotpm/player_lose_heart_reverse

# 存活加分
execute if score $countdown_fast mem matches 0 run scoreboard players add @a[tag=mini_running] surviveRound 1

# 检测土豆
function mini:hotpm/game/pm_check

# 往手上塞 TNT
execute as @a[tag=pm_holding] unless data entity @s Inventory[{Slot: 8b, tag: {game_item: 1b}, Count: 1b}] run function mini:hotpm/game/pm_show
execute as @a[tag=!pm_holding] if data entity @s Inventory[{tag: {game_item: 1b}}] run clear @s tnt{game_item: 1b}

# HUD
scoreboard players set $bossbar_color mem 0
scoreboard players set @a[tag=pm_holding] bossbar_color 1
execute as @p[tag=pm_holding] at @s run scoreboard players set @a[tag=!pm_holding] bossbar_color 2
scoreboard players set $bossbar_type mem 1
function lib:bossbar/show
bossbar set mini:yellow name ["炸弹稳定度 [",{"score":{"name": "$countdown_fast","objective": "mem"},"color": "yellow"},"]"]
bossbar set mini:red name [{"text":"< ! > 你正持有炸弹 < ! > [","color": "red"},{"text": "??","color": "red","obfuscated": true},"]"]

# 逆转模式下的 Action bar
execute if score $ley_line_disorder mem matches -1 run title @a[tag=pm_holding,scores={pm_harmless=0}] actionbar [{"text": "炸弹类型："},{"text": "有害","color": "red"}]
execute if score $ley_line_disorder mem matches -1 run title @a[tag=pm_holding,scores={pm_harmless=1}] actionbar [{"text": "炸弹类型："},{"text": "无害","color": "green"}]
execute if score $ley_line_disorder mem matches -1 run title @a[tag=!pm_holding] actionbar ""

# 粒子
execute as @a[tag=pm_holding] at @s run particle minecraft:crit ~ ~1 ~ 0.2 0.5 0.2 0.5 10 normal @a[distance=0.01..]
execute as @a[tag=pm_holding] at @s run particle minecraft:lava ~ ~1 ~ 0.1 0.1 0.1 0.5 1 force @a