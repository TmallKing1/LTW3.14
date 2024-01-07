# 幻境干扰生效：物价波动
execute as @e[tag=sell_entry] run function mini:hopper/game/lld/3_disorder1

# 显示提示
tellraw @a[team=!debugging] ["",{"text": ">> ","color": "green","bold": true},{"text": "所有物品的价值发生了一点变动！","color": "green"},{"text": "查看新的价值","hoverEvent": {"action": "show_text","contents": {"selector": "@e[tag=sell_entry]","separator": "\n "}},"color": "green","underlined": true}]

# 更改漏斗矿车内的显示
execute as @e[type=hopper_minecart] run item replace entity @s container.3 with ender_eye{hopper_item: 1b}
execute as @e[type=hopper_minecart] run item modify entity @s container.3 mini:hopper/ender_eye