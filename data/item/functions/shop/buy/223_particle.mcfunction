# 特效 (1dia)
tag @s remove canbuy
tellraw @s[scores={donate_diamond=..0},tag=!diamond_particle_3] ["",{"text":">> ","color":"red","bold":true},{"text":"你没有足够的钻石来购买这个装饰!","color":"red"}]
tag @s[scores={donate_diamond=1..},tag=!diamond_particle_3] add canbuy
tellraw @s[tag=diamond_particle_3] ["",{"text":">> ","color":"green","bold":true},"当前装饰已切换为 ",{"text":"水花","color":"green"}]

tellraw @s[tag=canbuy] ["",{"text":">> ","color":"green","bold":true},"你购买了 ",{"text":"装饰: 水花","color":"green"}]
execute as @s[tag=canbuy] run tellraw @a[tag=!canbuy] ["",{"text":">> ","color":"green","bold":true},{"selector": "@s","color":"green"}," 购买了 ",{"text":"装饰: 水花","color":"green"}]
tag @s[tag=canbuy] add diamond_particle_3
scoreboard players remove @s[tag=canbuy] donate_diamond 1
execute as @s[tag=!canbuy,tag=!diamond_particle_3] at @s run function lib:sounds/error
execute as @s[tag=!canbuy,tag=diamond_particle_3] at @s run function lib:sounds/hit
execute as @s[tag=canbuy] at @s run function lib:sounds/levelup
execute as @s[tag=canbuy] run function item:shop/refresh_diamond
tag @s remove canbuy

scoreboard players set @s[tag=diamond_particle_3] particle_type 13
