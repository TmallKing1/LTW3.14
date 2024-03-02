# 调整物品：仅在纵向速度 < -0.03 且 y > 9 时，才将 NoGravity 设置为 false
execute as @e[tag=bonus_item] store result score @s temp run data get entity @s Motion[1] 1000
execute as @e[tag=bonus_item] if entity @s[x=2000,y=9,z=12000,dx=100,dy=100,dz=100,scores={temp=-30..}] run data merge entity @s {NoGravity: 0b}
execute as @e[tag=bonus_item] unless entity @s[x=2000,y=9,z=12000,dx=100,dy=100,dz=100,scores={temp=-30..}] run data merge entity @s {NoGravity: 1b}

# 奖励僵尸特效
execute as @e[tag=bonus_zombie] at @s run particle dust 1 0 0 2 ~ ~ ~ 0.2 0 0.2 0 1 normal

# 替换僵尸掉落物
execute as @e[type=item,nbt={Item: {id: "minecraft:egg"}}] at @s positioned ~ ~3 ~ run function mini:zombie/game/new_item
kill @e[type=experience_orb]

# 对受伤僵尸的处理
execute as @e[type=zombie,nbt={HurtTime: 9s}] at @s run function mini:zombie/game/zombie_hurt

# 出界玩家处理
execute as @a[tag=mini_running] if entity @s[x=1988.0,y=15.0,z=11988.0,dx=44,dy=27,dz=44] at @s run damage @s 114.514 bad_respawn_point

# 清理浮漂
kill @e[type=fishing_bobber]