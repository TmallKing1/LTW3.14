# 处理三个栏位，$sell_temp 储存此次出售获得的总现金金额
tag @s add cant_sell
scoreboard players set $sell_temp mem 0
execute if data entity @s Items[{Slot: 0b}] run data modify storage mini:hopper waiting_sell set from entity @s Items[{Slot: 0b}]
execute if data entity @s Items[{Slot: 0b}] run function mini:hopper/game/hopper_mc/sell
execute if entity @e[tag=sell_item_marker] run item replace entity @s container.0 with air
execute if data entity @s Items[{Slot: 1b}] run data modify storage mini:hopper waiting_sell set from entity @s Items[{Slot: 1b}]
execute if data entity @s Items[{Slot: 1b}] run function mini:hopper/game/hopper_mc/sell
execute if entity @e[tag=sell_item_marker] run item replace entity @s container.1 with air
execute if data entity @s Items[{Slot: 2b}] run data modify storage mini:hopper waiting_sell set from entity @s Items[{Slot: 2b}]
execute if data entity @s Items[{Slot: 2b}] run function mini:hopper/game/hopper_mc/sell
execute if entity @e[tag=sell_item_marker] run item replace entity @s container.2 with air

# 若 $sell_temp 不为零，则加入玩家现金并提示所有人，然后清除自己
execute if score $sell_temp mem matches 1.. run scoreboard players operation @p[scores={temp=1..}] cash += $sell_temp mem
execute if score $sell_temp mem matches 1.. run tellraw @a[team=!debugging] ["",{"text": ">> ","color": "aqua","bold": true},{"selector":"@p[scores={temp=1..}]","color": "aqua"}," 通过出售物品获得了 ",{"score": {"name": "$sell_temp","objective": "mem"},"color": "aqua"},{"text": " 信用点","color": "aqua"},", 当前共有 ",{"score": {"name": "@p[scores={temp=1..}]","objective": "cash"}}," 信用点"]
execute if score $sell_temp mem matches 1.. as @p[scores={temp=1..}] at @s run function lib:sounds/hit
execute if score $sell_temp mem matches 1.. run function mini:hopper/game/hopper_mc/kill_hopper

# 若 $sell_temp 为零，则重置附魔书并提示提交出售请求的玩家
execute if score $sell_temp mem matches 0 run item replace entity @s container.4 with enchanted_book{hopper_item: 1b}
execute if score $sell_temp mem matches 0 run item modify entity @s container.4 mini:hopper/enchanted_book
execute if score $sell_temp mem matches 0 run tellraw @p[scores={temp=1..}] ["",{"text": ">> ","color": "red","bold": true},{"text":"请先放入待出售的物品再出售！","color": "red"}]
execute if score $sell_temp mem matches 0 as @p[scores={temp=1..}] at @s run function lib:sounds/error