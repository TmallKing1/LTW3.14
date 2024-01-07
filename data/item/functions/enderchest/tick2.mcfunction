# 末影箱 UI 处理

# 头戴物品更换
execute as @a[x=-4,y=7,z=-52,dx=13,dy=8,dz=13] unless score @s enderchest_type matches 1 run function item:powerup/enderchest/enter
execute as @a[scores={enderchest_type=1}] unless entity @s[x=-4,y=7,z=-52,dx=13,dy=8,dz=13] run scoreboard players set @s enderchest_type 0
execute as @a[scores={enderchest_type=1}] at @s run function item:powerup/enderchest/tick2

# 盔甲纹饰
execute as @a[x=21,y=8,z=-31,dx=4,dy=3,dz=4] unless score @s enderchest_type matches 11..20 run function item:armor_trim/enderchest/enter
execute as @a[scores={enderchest_type=11..20}] unless entity @s[x=21,y=8,z=-31,dx=4,dy=3,dz=4] run scoreboard players set @s enderchest_type 0
execute as @a[scores={enderchest_type=11..20}] at @s run function item:armor_trim/enderchest/tick2