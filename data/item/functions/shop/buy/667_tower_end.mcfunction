# 结束错误之塔
execute unless score @s shop_tower matches 1.. run tellraw @s ["",{"text": ">> ","color": "red","bold": true},{"text": "你当前不在错误之塔中！","color": "red"}]
execute unless score @s shop_tower matches 1.. at @s run function lib:sounds/error
execute if score @s shop_tower matches 1.. run function ltw:state/0/tower/end