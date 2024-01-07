# 标记自己和主人
tag @s add spining_axolotl
execute on leasher run tag @s add leasher

# 记录自己的位置和主人的位置
execute store result score $axolotl_X mem run data get entity @s Pos[0] 1000
execute store result score $axolotl_Z mem run data get entity @s Pos[2] 1000
execute store result score $leasher_X mem run data get entity @p[tag=leasher] Pos[0] 1000
execute store result score $leasher_Z mem run data get entity @p[tag=leasher] Pos[2] 1000

# 计算差值
scoreboard players operation $move_X mem = $leasher_X mem
scoreboard players operation $move_Z mem = $leasher_Z mem
scoreboard players operation $move_X mem -= $axolotl_X mem
scoreboard players operation $move_Z mem -= $axolotl_Z mem

# 向量垂直
scoreboard players operation $move_X temp = $move_X mem
scoreboard players operation $move_X mem = $move_Z mem
scoreboard players operation $move_Z mem = $move_X temp
scoreboard players operation $move_Z mem *= #-1 mem

# 设置Motion
execute store result entity @s[nbt={Variant: 0}] Motion[0] double 0.0001 run scoreboard players get $move_X mem
execute store result entity @s[nbt={Variant: 0}] Motion[2] double 0.0001 run scoreboard players get $move_Z mem
execute store result entity @s[nbt={Variant: 1}] Motion[0] double 0.00012 run scoreboard players get $move_X mem
execute store result entity @s[nbt={Variant: 1}] Motion[2] double 0.00012 run scoreboard players get $move_Z mem
execute store result entity @s[nbt={Variant: 2}] Motion[0] double 0.00014 run scoreboard players get $move_X mem
execute store result entity @s[nbt={Variant: 2}] Motion[2] double 0.00014 run scoreboard players get $move_Z mem
execute store result entity @s[nbt={Variant: 3}] Motion[0] double 0.00016 run scoreboard players get $move_X mem
execute store result entity @s[nbt={Variant: 3}] Motion[2] double 0.00016 run scoreboard players get $move_Z mem
execute store result entity @s[nbt={Variant: 4}] Motion[0] double 0.00018 run scoreboard players get $move_X mem
execute store result entity @s[nbt={Variant: 4}] Motion[2] double 0.00018 run scoreboard players get $move_Z mem

# 检测到玩家时对其造成伤害
execute unless entity @s[scores={countdown_fast=1..}] at @s run function mini:circle/game/axolotl_damage

tag @s remove spining_axolotl
tag @a remove leasher