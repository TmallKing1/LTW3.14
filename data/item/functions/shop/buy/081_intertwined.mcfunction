# 纠缠之缘 (动态)
scoreboard players add @s shop_07_fish 0
tag @s remove canbuy
execute if score @s gold matches 18.. run tag @s add canbuy
tellraw @s[tag=!canbuy] ["",{"text":">> ","color":"red","bold":true},{"text":"你没有足够的金锭来购买这个物品！","color":"red"}]
scoreboard players add @s[tag=canbuy] primogem 64
tellraw @s[tag=canbuy] ["",{"text":">> ","color":"green","bold":true},"你购买了 ",{"text":"纠缠之缘 ","color":"light_purple"}]
execute as @s[tag=canbuy] run tellraw @a[tag=!canbuy] ["",{"text":">> ","color":"green","bold":true},{"selector": "@s","color":"green"}," 购买了 ",{"text":"纠缠之缘 ","color":"light_purple"}]
scoreboard players remove @s[tag=canbuy] gold 18
execute as @s[tag=!canbuy] at @s run function lib:sounds/error
execute as @s[tag=canbuy] at @s run function lib:sounds/hit
execute as @s[tag=canbuy] run function item:shop/refresh_gold
execute as @s[tag=canbuy] run function item:shop/refresh_primogem
tag @s remove canbuy
scoreboard players reset @s temp