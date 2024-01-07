# 再次进行游戏设置
execute as @a[tag=!pass_setup] at @s run function ltw:state/0/setup/check
execute as @a[tag=pass_setup,scores={setup_trigger=-1}] at @s run tp @s 2.5 300.2 -52.5 0 0
execute as @a[tag=pass_setup,scores={setup_trigger=-1}] at @s run tag @s remove pass_setup

# 防止未到达过幻境抽取地点的玩家走捷径
execute as @a[x=19,y=52,z=-42,dx=11,dy=11,dz=7] run tag @s add pass_wish
execute as @a[x=13,y=27,z=-26,dx=0,dy=3,dz=0,tag=!pass_wish] run tellraw @s ["",{"text": ">> ","color": "red","bold": true},{"text": "前面的区域以后再来探索吧！","color": "red"}]
execute as @a[x=13,y=27,z=-26,dx=0,dy=3,dz=0,tag=!pass_wish] run tp @s 15.66 21.00 -31.66 392.10 14.55

# 下界传送门
scoreboard players add @a[x=-32,y=8,z=-41,dx=0,dy=3,dz=4] nether_portal 1
execute as @a unless entity @s[x=-32,y=8,z=-41,dx=0,dy=3,dz=4] run scoreboard players set @s nether_portal 0
execute as @a[scores={nether_portal=39..}] at @s run function ltw:state/0/portal

# 赞助者建筑传送
tp @a[x=994,y=8,z=-1001,dx=2,dy=3,dz=2] 955 20 -1000

# 处理掉入虚空的玩家
execute as @a[x=500,y=-64,z=-1500,dx=1000,dy=63,dz=1000] run tp @s 987 21 -1000 90 0

# 大厅隐藏进度
execute as @a[x=0,y=33,z=-26,dx=0,dy=0,dz=0] at @s run function ltw:state/0/hidden_adv

# 处理乱扔物品的玩家
execute as @e[type=item,nbt={Item: {tag: {stats_item: 1b}}},tag=!new_stats] unless data entity @s Thrower at @s run tag @a[distance=..3] add refresh
execute as @e[type=item,nbt={Item: {tag: {stats_item: 1b}}},tag=!new_stats] unless data entity @s Thrower run kill @s
execute as @a[tag=refresh] run function item:shop/refresh_gold
execute as @a[tag=refresh] run function item:shop/refresh_green
execute as @a[tag=refresh] run function item:shop/refresh_diamond
tag @a[tag=refresh] remove refresh

# 处理传送卷轴
execute as @a if data entity @s Inventory.[{Slot: -106b, tag: {teleportation: 1b}}] run tp @s -1 28 -47 -90 0
execute as @a if data entity @s Inventory.[{Slot: -106b, tag: {teleportation: 1b}}] run function item:shop/refresh_gold

# 处理钻石块
execute as @a if data entity @s Inventory.[{Slot: -106b, id: "minecraft:diamond_block"}] run item replace entity @s armor.head from entity @s weapon.offhand
execute as @a if data entity @s Inventory.[{Slot: -106b, id: "minecraft:diamond_block"}] run item replace entity @s weapon.offhand with air

# 调用末影箱模块
execute as @a at @s run function item:enderchest/tick2
