execute as @a[tag=tempPlayerTp,limit=1] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:crimson_button",Count:1b,tag:{LockTempItem:1b,display:{Name:'{"text":"非法物品","color":"red"}'}}},Tags:["LockTempItem","ReturnItem"]}
function mini:bingo/game/select_item
kill @e[type=item,nbt={Item:{id:"minecraft:crimson_button"}},tag=LockTempItem]
# 不返还奇怪的东西
kill @e[type=item,nbt={Item:{tag:{game_item:1b}}}]
kill @e[type=item,nbt={Item:{tag:{bingo_item:1b}}}]
kill @e[type=item,nbt={Item:{tag:{LockItem:1b}}}]
data modify entity @e[type=item,tag=LockTempItem,limit=1] Thrower set from entity @a[tag=tempPlayerTp,limit=1] UUID
execute as @e[type=item,tag=LockTempItem,limit=1] run function item:disable_throw
tag @e[type=item,tag=LockTempItem] remove LockTempItem
