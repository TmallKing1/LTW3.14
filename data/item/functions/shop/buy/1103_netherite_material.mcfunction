# 下界合金质盔甲纹饰 (1d)
scoreboard players set $trim_material_num mem 8
function item:armor_trim/has_armor_trim_material
tag @s remove canbuy
tag @s[scores={trim_boolean=0,donate_diamond=1..}] add canbuy
tellraw @s[scores={trim_boolean=1}] ["",{"text":">> ","color":"aqua","bold":true},{"text":"你已经拥有这个物品了!","color":"aqua"}]
tellraw @s[scores={trim_boolean=0,donate_diamond=..0}] ["",{"text":">> ","color":"red","bold":true},{"text":"你没有足够的钻石来购买这个物品!","color":"red"}]
tellraw @s[tag=canbuy] ["",{"text":">> ","color":"green","bold":true},"你购买了 ",{"text":"下界合金质盔甲纹饰","color":"green"}]
execute as @s[tag=canbuy] run tellraw @a[tag=!canbuy] ["",{"text":">> ","color":"green","bold":true},{"selector": "@s","color":"green"}," 购买了 ",{"text":"下界合金质盔甲纹饰","color":"green"}]
scoreboard players set $trim_material_num mem 8
execute as @s[tag=canbuy] run function item:armor_trim/give_armor_trim_material
scoreboard players remove @s[tag=canbuy] donate_diamond 1
execute as @s[tag=!canbuy] at @s run function lib:sounds/error
execute as @s[tag=canbuy] at @s run function lib:sounds/levelup
execute as @s[tag=canbuy] run function item:shop/refresh_diamond
tag @s remove canbuy