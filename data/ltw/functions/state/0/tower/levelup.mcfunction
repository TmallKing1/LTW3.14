# 升级

# 随机生成
scoreboard players operation $tower mem = @s shop_tower
execute store result score $random mem run random value 1..10
execute if score $random mem matches 5.. run scoreboard players add @s[tag=canbuy,scores={shop_tower=14..15}] shop_tower 1
execute if score $random mem matches 4.. run scoreboard players add @s[tag=canbuy,scores={shop_tower=11..13}] shop_tower 1
execute if score $random mem matches 3.. run scoreboard players add @s[tag=canbuy,scores={shop_tower=5..10}] shop_tower 1
execute if score $random mem matches 2.. run scoreboard players add @s[tag=canbuy,scores={shop_tower=1..4}] shop_tower 1

execute if score @s shop_tower = $tower mem run function ltw:state/0/tower/fail
execute as @s[scores={shop_tower=1..15}] unless score @s shop_tower = $tower mem run tellraw @a ["",{"text": ">> ","color": "green","bold": true},{"selector": "@s","color": "green"}," 在错误之塔中往上爬了一层，当前在第 ",{"score":{"name": "@s","objective": "shop_tower"},"color": "green"}," 层"]
execute unless score @s shop_tower = $tower mem run function lib:sounds/hit
execute as @s[scores={shop_tower=16}] run function ltw:state/0/tower/end

function item:shop/refresh_gold
tag @s remove canbuy