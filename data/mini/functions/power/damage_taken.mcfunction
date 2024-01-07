# 玩家受到伤害时执行

# 寻找造成伤害者
execute on attacker run tag @s add damage_dealer
scoreboard players set @a[tag=damage_dealer] countdown_fast 10
execute store result storage mini:power Health int 100 run data get entity @s Health
execute store result storage mini:power Health double 0.005 run data get storage mini:power Health
title @a[tag=damage_dealer] actionbar [{"selector":"@s","color": "dark_green"},{"text": " 剩余 ","color": "aqua"},{"text": "❤","color": "red"},{"nbt":"Health","storage":"mini:power","color": "red"}]

# 记录上一次伤害UUID
execute store result score @s last_damage_UUID run data get entity @e[tag=damage_dealer,limit=1] UUID[0]

# 记录伤害类型
execute if entity @a[tag=damage_dealer,tag=!powered] run scoreboard players set @s last_damage_type 1
execute if entity @a[tag=damage_dealer,tag=powered] run scoreboard players set @s last_damage_type 2
execute unless entity @a[tag=damage_dealer] run scoreboard players set @s last_damage_type 0
execute if entity @s[tag=mini_running,x=978,y=-75,z=18978,dx=88,dy=-35,dz=88] run scoreboard players set @s last_damage_type 0

# 判断是否充能
execute if entity @a[tag=damage_dealer,tag=powered] run effect give @s slowness 1 10 true
execute if entity @a[tag=damage_dealer,tag=powered] run effect give @s blindness 2 10 true
execute if entity @a[tag=damage_dealer,tag=powered] run playsound minecraft:block.beacon.power_select player @s ~ ~ ~ 1 2
execute as @a[tag=damage_dealer,tag=powered] run function mini:power/game/set_powered_false

# 增加分数
#scoreboard players add @a[tag=damage_dealer] kills 1

# 自身回能
execute store result score $random mem run random value 2..4
scoreboard players operation @s player_energy += $random mem
scoreboard players set @s[scores={player_energy=101..}] player_energy 100

# 取消标记
tag @a remove damage_dealer