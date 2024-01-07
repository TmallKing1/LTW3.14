# 标记
tag @e[type=marker,limit=1,sort=random,distance=0.001..,tag=water] add being_teleported
execute unless entity @e[tag=being_teleported] run tag @e[type=marker,limit=1,sort=random,tag=water] add being_teleported

# 传送
tp @s @e[tag=being_teleported,limit=1]

# 显示提示信息
execute store result score $uuid temp run data get entity @e[tag=being_teleported,limit=1] data.owner[0]
execute as @a if score @s UUID = $uuid temp run tag @s add water1
tellraw @s ["",{"text": ">> ","color": "aqua","bold": true},"你被传送到了 ",{"selector": "@a[tag=water1]","color": "aqua"}," 的位置!"]
function lib:sounds/teleport

# 清理
kill @e[tag=being_teleported]
tag @a remove water1