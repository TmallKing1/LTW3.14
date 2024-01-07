# 检测副手是否有铁剑且能量值足够
execute if data entity @s Inventory[{Slot:-106b,id:"minecraft:iron_sword",tag:{game_item: 1b}}] unless score @s player_energy matches 100.. run tellraw @s ["",{"text": ">> ","color": "red","bold": true},{"text": "你没有足够的能量值……","color": "red"}]
execute if data entity @s Inventory[{Slot:-106b,id:"minecraft:iron_sword",tag:{game_item: 1b}}] unless score @s player_energy matches 100.. run function lib:sounds/error
execute if data entity @s Inventory[{Slot:-106b,id:"minecraft:iron_sword",tag:{game_item: 1b}}] if score @s[tag=powered] player_energy matches 100.. run tellraw @s ["",{"text": ">> ","color": "red","bold": true},{"text": "你的铁剑已经处于充能状态了！","color": "red"}]
execute if data entity @s Inventory[{Slot:-106b,id:"minecraft:iron_sword",tag:{game_item: 1b}}] if score @s[tag=powered] player_energy matches 100.. run function lib:sounds/error
execute if data entity @s Inventory[{Slot:-106b,id:"minecraft:iron_sword",tag:{game_item: 1b}}] if score @s[tag=!powered] player_energy matches 100.. run function mini:power/game/set_powered
# 清理铁剑
clear @s iron_sword{game_item:1b}

# 返还格子上的物品
execute if data entity @s Inventory[{Slot:8b}] run scoreboard players set @s item_slot 8
execute if data entity @s Inventory[{Slot:8b}] at @s run function item:pop_slot/return_item

# 计算攻击力
scoreboard players operation $player_atk mem = @s player_atk
execute as @s[tag=powered] run scoreboard players operation $player_atk mem *= #3 mem
execute as @s[tag=!powered,scores={kill_streak=3..}] run scoreboard players operation $player_atk mem /= #2 mem
execute store result storage mini:power SwordAtk double 0.01 run scoreboard players get $player_atk mem

# 替换物品
function mini:power/game/give_sword1 with storage mini:power