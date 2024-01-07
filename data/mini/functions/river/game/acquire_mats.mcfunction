# 给玩家上「拥有物资」标签
tag @a[tag=giving_mats] add has_mats
execute if entity @s[tag=basic] run tag @a[tag=giving_mats] add has_mats_basic
execute if entity @s[tag=speci] run tag @a[tag=giving_mats] add has_mats_speci

# 提示玩家
execute as @a[tag=giving_mats] at @s run function lib:sounds/hit
execute as @a[tag=giving_mats] run tellraw @s ["",{"text": ">> ","color": "green","bold": true},{"text": "你拿起了物资！","color": "green"}]

# 更改交互实体挥手属性
data modify entity @s response set value 0b

# 清除交互实体附近的展示实体
kill @e[type=item_display,distance=..1]

tag @s remove mats_exist