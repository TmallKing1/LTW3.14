# 移除多余的极度虚弱箭
kill @e[type=arrow,tag=!projectile_checked,nbt={pickup: 2b,Color: 1524309}] 

# 取消箭的伤害
execute if score $state mem matches 5 if score $pvp_mode mem matches 1 as @e[type=arrow,tag=!projectile_checked] run data modify entity @s damage set value 0

# 标记箭为不可拾取
execute unless score $mini_type mem matches 202 as @e[type=arrow,tag=!projectile_checked] run data merge entity @s {pickup: 0b, life: 1000, Tags: ["projectile_checked"]}
execute if score $mini_type mem matches 202 as @e[type=spectral_arrow,tag=!projectile_checked] run data merge entity @s {pickup: 0b, life: 1000, Tags: ["projectile_checked"]}
execute as @e[type=arrow,tag=projectile_checked] if data entity @s {inGround: 1b, Color: 1524309} run function item:special/give_back_arrow