# 荆棘检测：仅在 玩家主手物品附有荆棘附魔 且 玩家当前未持有炸弹 时触发荆棘惩罚
tag @s remove thorns_check_mainhand
execute if entity @s[tag=pm_holding] run return fail
execute unless data entity @s SelectedItem.tag.Enchantments[{id:"minecraft:thorns"}] run return fail

# 物品最大耐久度：钻石护腿为 495，皮革外套为 80
execute if data entity @s SelectedItem{id:"minecraft:diamond_leggings"} run scoreboard players set $max_damage mem 495
execute if data entity @s SelectedItem{id:"minecraft:leather_chestplate"} run scoreboard players set $max_damage mem 80

# 获取物品当前耐久度
execute store result score $current_damage mem run data get entity @s SelectedItem.tag.Damage

# 用最大耐久度减去当前耐久度
scoreboard players operation $damage_difference mem = $max_damage mem
scoreboard players operation $damage_difference mem -= $current_damage mem
scoreboard players operation $damage_difference1 mem = $damage_difference mem

# 当前耐久度加上差值的一半（向上取整）
scoreboard players operation $damage_difference mem /= #2 mem
scoreboard players operation $damage_difference1 mem %= #2 mem
scoreboard players operation $current_damage mem += $damage_difference mem
scoreboard players operation $current_damage mem += $damage_difference1 mem

# 替换玩家物品（若已经坏了就替换成空气）
item replace block 0 0 1 container.0 from entity @s weapon.mainhand
execute store result block 0 0 1 Items[{Slot: 0b}].tag.Damage int 1 run scoreboard players get $current_damage mem
execute unless score $current_damage mem >= $max_damage mem run item replace entity @s weapon.mainhand from block 0 0 1 container.0
execute if score $current_damage mem >= $max_damage mem run item replace entity @s weapon.mainhand with air
execute if score $current_damage mem >= $max_damage mem at @s run playsound entity.item.break player @a ~ ~ ~ 1.0