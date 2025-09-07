# 切换 Lost 星星显示状态
clear @s nether_star{lobby_item:1b}
execute if entity @s[tag=lost_enable] at @s run function lib:sounds/hit2
execute if entity @s[tag=lost_enable] run item replace entity @s inventory.26 with nether_star{display:{Name:'{"text": "切换「失落的日记」标识显示","color": "light_purple","italic": false}',Lore:['{"text": "点击切换你的「失落的日记」标识（紫色星星）显示状态","color": "gray","italic": false}','[{"text": "当前状态：","color": "gray","italic": false},{"text": "隐藏","color": "red","italic": false}]']},lobby_item:1b,lost_enable:0b}
execute if entity @s[tag=lost_enable,team=playing_lost] run team join playing @s
execute if entity @s[tag=lost_enable,team=watching_lost] run team join watching @s
execute if entity @s[tag=lost_enable] run return run tag @s remove lost_enable
execute if entity @s[tag=!lost_enable] at @s run function lib:sounds/hit
execute if entity @s[tag=!lost_enable] run item replace entity @s inventory.26 with nether_star{display:{Name:'{"text": "切换「失落的日记」标识显示","color": "light_purple","italic": false}',Lore:['{"text": "点击切换你的「失落的日记」标识（紫色星星）显示状态","color": "gray","italic": false}','[{"text": "当前状态：","color": "gray","italic": false},{"text": "显示","color": "green","italic": false}]']},lobby_item:1b,lost_enable:1b}
execute if entity @s[tag=!lost_enable,team=playing] run team join playing_lost @s
execute if entity @s[tag=!lost_enable,team=watching] run team join watching_lost @s
execute if entity @s[tag=!lost_enable] run return run tag @s add lost_enable