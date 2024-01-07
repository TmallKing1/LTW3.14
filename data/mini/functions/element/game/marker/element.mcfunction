# 标记的元素值
execute store result score $element_type mem run data get entity @s data.element_type

# 检测周围是否有元素物品
execute unless entity @s[tag=resp] positioned ~ ~0.5 ~ unless entity @e[type=item,nbt={Item:{tag:{element_war: 1b}}},distance=..0.3] run scoreboard players set @s countdown_fast 20
execute unless entity @s[tag=resp] positioned ~ ~0.5 ~ unless entity @e[type=item,nbt={Item:{tag:{element_war: 1b}}},distance=..0.3] run tag @s add resp

# 若没有元素物品且倒计时已到，则生成新的元素物品
execute if entity @s[tag=resp,scores={countdown_fast=..0}] run function mini:element/game/item/summon