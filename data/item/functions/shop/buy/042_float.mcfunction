# 喷溅型浮空药水 II (2gb)
scoreboard players add @s shop_04_float 0
tag @s remove canbuy
tag @s[scores={shop_04_float=1,gold=162..}] add canbuy
tellraw @s[scores={shop_04_float=2..}] ["",{"text":">> ","color":"aqua","bold":true},{"text":"你已经购买了这个物品了!","color":"aqua"}]
tellraw @s[scores={shop_04_float=1,gold=..161}] ["",{"text":">> ","color":"red","bold":true},{"text":"你没有足够的金块来购买这个物品!","color":"red"}]
tellraw @s[scores={shop_04_float=..0}] ["",{"text":">> ","color":"red","bold":true},{"text":"你需要先购买上一级的物品!","color":"red"}]
tellraw @s[tag=canbuy] ["",{"text":">> ","color":"green","bold":true},"你购买了 ",{"text":"浮空药水延时","color":"green"}]
execute as @s[tag=canbuy] run tellraw @a[tag=!canbuy] ["",{"text":">> ","color":"green","bold":true},{"selector": "@s","color":"green"}," 购买了 ",{"text":"浮空药水延时","color":"green"}]
scoreboard players add @s[tag=canbuy] shop_04_float 1
scoreboard players remove @s[tag=canbuy] gold 162
execute as @s[tag=!canbuy] at @s run function lib:sounds/error
execute as @s[tag=canbuy] at @s run function lib:sounds/levelup
execute as @s[tag=canbuy] run function item:shop/refresh_gold
tag @s remove canbuy