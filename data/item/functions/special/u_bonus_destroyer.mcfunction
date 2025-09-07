execute if score $state mem matches 7 run function lib:sounds/error
execute if score $state mem matches 7 run scoreboard players set @s item_slot -106
execute if score $state mem matches 7 run function item:pop_slot/return_item
execute if score $state mem matches 7 run item replace entity @s weapon.offhand with air
execute if score $state mem matches 7 run return run tellraw @s ["",{"text": ">> ","color": "red","bold": true},{"text": "选择奖励期间无法使用此道具……","color": "red"}]
execute unless entity @e[type=item,tag=bonus_item,distance=..10] run function lib:sounds/error
execute unless entity @e[type=item,tag=bonus_item,distance=..10] run scoreboard players set @s item_slot -106
execute unless entity @e[type=item,tag=bonus_item,distance=..10] run function item:pop_slot/return_item
execute unless entity @e[type=item,tag=bonus_item,distance=..10] run item replace entity @s weapon.offhand with air
execute unless entity @e[type=item,tag=bonus_item,distance=..10] run return run tellraw @s ["",{"text": ">> ","color": "red","bold": true},{"text": "附近没有奖励物资可供摧毁……","color": "red"}]
tag @e[type=item,tag=bonus_item,distance=..10,sort=nearest,limit=1] add to_be_destroyed
tellraw @a[team=!debugging] ["",{"text": ">> ","color": "gold","bold": true},{"selector":"@s","color": "gold"}," 摧毁了 ",{"selector":"@e[tag=to_be_destroyed]"},{"text": "！"}]
execute at @e[tag=to_be_destroyed] run particle explosion ~ ~ ~ 0 0 0 0 1 force @a
item replace entity @s weapon.offhand with air
kill @e[tag=to_be_destroyed]