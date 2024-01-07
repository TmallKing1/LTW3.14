tellraw @a ["",{"text": ">> ","color": "red","bold": true},{"selector": "@s","color": "red"}," 从错误之塔第 ",{"score":{"name": "@s","objective": "shop_tower"},"color": "red"}," 层上掉下来了！"]
function lib:sounds/error
scoreboard players set @s shop_tower 0
function ltw:state/0/state/join_watch