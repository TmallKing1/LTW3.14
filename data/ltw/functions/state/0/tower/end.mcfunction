execute as @s[scores={shop_tower=1..15}] run tellraw @a ["",{"text": ">> ","color": "green","bold": true},{"selector": "@s","color": "green"}," 拿到了错误之塔第 ",{"score":{"name": "@s","objective": "shop_tower"},"color": "green"}," 层的奖励！"]
execute as @s[scores={shop_tower=16}] run tellraw @a ["",{"text": ">> ","color": "green","bold": true},{"selector": "@s","color": "green"}," 拿到了错误之塔第 16 层的奖励（",{"text": "大成功","color": "green"},"）！"]

# 获得奖励
scoreboard players add @s[scores={shop_tower=1}] gold 1
scoreboard players add @s[scores={shop_tower=2}] gold 3
scoreboard players add @s[scores={shop_tower=3}] gold 5
scoreboard players add @s[scores={shop_tower=4}] gold 9
scoreboard players add @s[scores={shop_tower=5}] gold 18
scoreboard players add @s[scores={shop_tower=6}] gold 36
scoreboard players add @s[scores={shop_tower=7}] gold 63
scoreboard players add @s[scores={shop_tower=8}] gold 90
scoreboard players add @s[scores={shop_tower=8}] primogem 64
scoreboard players add @s[scores={shop_tower=9}] gold 117
scoreboard players add @s[scores={shop_tower=9}] primogem 192
scoreboard players add @s[scores={shop_tower=10}] gold 162
scoreboard players add @s[scores={shop_tower=10}] primogem 192
scoreboard players add @s[scores={shop_tower=11}] gold 162
scoreboard players add @s[scores={shop_tower=11}] primogem 640
scoreboard players add @s[scores={shop_tower=12}] gold 198
scoreboard players add @s[scores={shop_tower=12}] primogem 640
scoreboard players add @s[scores={shop_tower=13}] gold 243
scoreboard players add @s[scores={shop_tower=13}] primogem 640
scoreboard players add @s[scores={shop_tower=14}] gold 243
scoreboard players add @s[scores={shop_tower=14}] primogem 1280
scoreboard players add @s[scores={shop_tower=15}] gold 243
scoreboard players add @s[scores={shop_tower=15}] primogem 1920
scoreboard players add @s[scores={shop_tower=16}] gold 324
scoreboard players add @s[scores={shop_tower=16}] primogem 1920
advancement grant @s[scores={shop_tower=16}] only ltw:egg/lobby/error_tower

function lib:sounds/levelup
function ltw:state/0/state/join_watch
scoreboard players set @s shop_tower 0

function item:shop/refresh_gold
function item:shop/refresh_essence