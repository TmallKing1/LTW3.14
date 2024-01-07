# 返还格子上的物品
scoreboard players set @s item_slot -106
function item:pop_slot/return_item

item replace entity @s weapon.offhand with air

# 显示提示
tellraw @s ["",{"text": ">> ","color": "red","bold": true},{"text": "游戏临时道具无法进行附魔！","color": "red"}]
function lib:sounds/error