# 塔塔开
scoreboard players add @s[tag=canbuy] shop_tower 1
tellraw @a ["",{"text": ">> ","color": "green","bold": true},{"selector": "@s","color": "green"}," 开启了错误之塔，当前在第 ",{"score": {"name": "@s","objective": "shop_tower"},"color": "green"}, " 层"]
function item:shop/refresh_gold
function ltw:state/0/state/join_watch
function lib:sounds/hit