# 分裂箭检测
execute as @e[type=arrow,nbt={crit: 1b}] at @s run tag @s add crit_
execute as @e[type=arrow,tag=split,tag=split_] at @s run function mini:arrow/game/split
execute as @e[type=arrow,tag=split,tag=!split_] at @s run tag @s add split_

execute as @e[type=spectral_arrow,nbt={crit: 1b}] at @s run tag @s add crit_
execute as @e[type=spectral_arrow,tag=split,tag=split_] at @s run function mini:arrow/game/split
execute as @e[type=spectral_arrow,tag=split,tag=!split_] at @s run tag @s add split_

# 不允许使用弓时清除箭
execute unless score $allow_bow mem matches 1 run kill @e[type=arrow]

# 幻境干扰更改箭的状态
execute if score $ley_line_disorder mem matches 1 run tag @e[type=spectral_arrow] add crit_

# 接触 TNT 的弓箭检测
execute as @e[type=spectral_arrow,nbt={inGround: 1b, inBlockState: {Name: "minecraft:tnt"}}] at @s run function mini:arrow/game/check_tnt
execute as @e[type=arrow,nbt={inGround: 1b, inBlockState: {Name: "minecraft:tnt"}}] at @s run function mini:arrow/game/check_tnt

# 清除入地的箭
execute as @e[type=arrow,nbt={inGround: 1b}] run kill
execute as @e[type=spectral_arrow,nbt={inGround: 1b}] run kill

# 清除 TNT 防止爆炸损坏方块
execute as @e[type=tnt] store result score @s tnt_timer run data get entity @s Fuse
execute as @e[type=tnt] if score @s tnt_timer matches ..5 run kill