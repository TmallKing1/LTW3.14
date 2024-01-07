item replace entity @s weapon.mainhand from entity @s weapon.offhand
item replace entity @s weapon.offhand with air
tellraw @s ["",{"text": ">> ","color": "red","bold": true},{"text": "主手没有物品，无法附魔！","color": "red"}]
function lib:sounds/error