data modify storage item:armor SaveMaterialType set value -1
# 逐一检测箱子
execute unless data entity @s EnderItems[{Count: 1b, Slot: 19b, tag: {armor_trim_set: 1b}}] run data modify storage item:armor SaveMaterialType set value 0
execute unless data entity @s EnderItems[{Count: 1b, Slot: 20b, tag: {armor_trim_set: 1b}}] run data modify storage item:armor SaveMaterialType set value 1
execute unless data entity @s EnderItems[{Count: 1b, Slot: 21b, tag: {armor_trim_set: 1b}}] run data modify storage item:armor SaveMaterialType set value 2
execute unless data entity @s EnderItems[{Count: 1b, Slot: 22b, tag: {armor_trim_set: 1b}}] run data modify storage item:armor SaveMaterialType set value 3
execute unless data entity @s EnderItems[{Count: 1b, Slot: 23b, tag: {armor_trim_set: 1b}}] run data modify storage item:armor SaveMaterialType set value 4
execute unless data entity @s EnderItems[{Count: 1b, Slot: 24b, tag: {armor_trim_set: 1b}}] run data modify storage item:armor SaveMaterialType set value 5
execute unless data entity @s EnderItems[{Count: 1b, Slot: 25b, tag: {armor_trim_set: 1b}}] run data modify storage item:armor SaveMaterialType set value 6
execute unless data storage item:armor {SaveMaterialType: -1} run function item:armor_trim/enderchest/switches/type11/save with storage item:armor

# 切换菜单
execute unless data entity @s EnderItems[{Count: 1b, Slot: 3b, tag: {armor_trim_set: 1b}}] run function item:armor_trim/enderchest/switches/type11/switch_12
execute unless data entity @s EnderItems[{Count: 1b, Slot: 5b, tag: {armor_trim_set: 1b}}] run function item:armor_trim/enderchest/switches/type11/switch_13