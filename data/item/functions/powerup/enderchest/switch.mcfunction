# 删除标签
tag @s remove switch
tag @s remove switch_on
tag @s remove detected_powerup

# 逐一检测箱子
execute unless data entity @s EnderItems[{Count: 1b, Slot: 0b, tag: {powerup_set: 1b}}] run function item:powerup/enderchest/switches/00001
execute unless data entity @s EnderItems[{Count: 1b, Slot: 1b, tag: {powerup_set: 1b}}] run function item:powerup/enderchest/switches/00002
execute unless data entity @s EnderItems[{Count: 1b, Slot: 2b, tag: {powerup_set: 1b}}] run function item:powerup/enderchest/switches/00003
execute unless data entity @s EnderItems[{Count: 1b, Slot: 3b, tag: {powerup_set: 1b}}] run function item:powerup/enderchest/switches/00004
execute unless data entity @s EnderItems[{Count: 1b, Slot: 4b, tag: {powerup_set: 1b}}] run function item:powerup/enderchest/switches/00005
execute unless data entity @s EnderItems[{Count: 1b, Slot: 5b, tag: {powerup_set: 1b}}] run function item:powerup/enderchest/switches/00006
execute unless data entity @s EnderItems[{Count: 1b, Slot: 6b, tag: {powerup_set: 1b}}] run function item:powerup/enderchest/switches/00007
execute unless data entity @s EnderItems[{Count: 1b, Slot: 7b, tag: {powerup_set: 1b}}] run function item:powerup/enderchest/switches/00008
execute unless data entity @s EnderItems[{Count: 1b, Slot: 8b, tag: {powerup_set: 1b}}] run function item:powerup/enderchest/switches/00009
execute unless data entity @s EnderItems[{Count: 1b, Slot: 9b, tag: {powerup_set: 1b}}] run function item:powerup/enderchest/switches/00010
execute unless data entity @s EnderItems[{Count: 1b, Slot: 10b, tag: {powerup_set: 1b}}] run function item:powerup/enderchest/switches/00011
execute unless data entity @s EnderItems[{Count: 1b, Slot: 11b, tag: {powerup_set: 1b}}] run function item:powerup/enderchest/switches/00012
execute unless data entity @s EnderItems[{Count: 1b, Slot: 12b, tag: {powerup_set: 1b}}] run function item:powerup/enderchest/switches/00013
execute unless data entity @s EnderItems[{Count: 1b, Slot: 13b, tag: {powerup_set: 1b}}] run function item:powerup/enderchest/switches/00014
execute unless data entity @s EnderItems[{Count: 1b, Slot: 14b, tag: {powerup_set: 1b}}] run function item:powerup/enderchest/switches/00015

# 显示提示
execute if entity @s[tag=detected_powerup,tag=!switch,tag=switch_on] run tellraw @s [{"text": ">> ","color": "green","bold": true},{"text": "已成功激活！","color": "green","bold": false}]
execute if entity @s[tag=detected_powerup,tag=!switch,tag=switch_on] at @s run function lib:sounds/hit
execute if entity @s[tag=detected_powerup,tag=!switch,tag=!switch_on] run tellraw @s [{"text": ">> ","color": "green","bold": true},{"text": "已成功取消激活！","color": "green","bold": false}]
execute if entity @s[tag=detected_powerup,tag=!switch,tag=!switch_on] at @s run function lib:sounds/hit2
execute if entity @s[tag=detected_powerup,tag=switch] run tellraw @s [{"text": ">> ","color": "red","bold": true},{"text": "你现在还未拥有该物品……","color": "red","bold": false}]
execute if entity @s[tag=detected_powerup,tag=switch] at @s run function lib:sounds/error