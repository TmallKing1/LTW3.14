item modify entity @s weapon.mainhand item:enchanted_book/unbreakable
item replace entity @s weapon.offhand with air
tellraw @s ["",{"text": ">> ","color": "aqua","bold": true},"成功为物品添加 ",{"text": "无法破坏","color": "aqua"}," 效果！"]
function lib:sounds/levelup