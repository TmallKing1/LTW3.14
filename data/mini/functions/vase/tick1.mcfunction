# 调整物品：仅在纵向速度 < -0.03 且 y > 6.5 时，才将 NoGravity 设置为 false
execute as @e[tag=bonus_item] store result score @s temp run data get entity @s Motion[1] 1000
execute as @e[tag=bonus_item] if entity @s[x=2000,y=6.5,z=2000,dx=100,dy=100,dz=100,scores={temp=-30..}] run data merge entity @s {NoGravity:0b}
execute as @e[tag=bonus_item] unless entity @s[x=2000,y=6.5,z=2000,dx=100,dy=100,dz=100,scores={temp=-30..}] run data merge entity @s {NoGravity:1b}

# 检查所有仙人掌
execute as @e[type=item] at @s if data entity @s Item{id:"minecraft:cactus"} run function mini:vase/game/cactus

# 清理没用的东西
kill @e[type=item,nbt={Item:{id:"minecraft:acacia_button"}}]
clear @a[team=!debugging] acacia_button

# 更改丢出的雪球的nbt
execute as @e[type=snowball,tag=!fixed_snowball] run function mini:vase/game/fix_snowball

# 附魔雪球粒子
execute as @e[type=snowball,tag=enchanted] at @s run particle flame ~ ~ ~ 0 0 0 0 1 force @a

# 检查挖掘破坏罐子数
execute as @a[scores={vase_broken_dig=1..}] run function mini:vase/game/use_snowball

# 检查标记
execute as @e[tag=vase_marker] at @s run function mini:vase/game/marker