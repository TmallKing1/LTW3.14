data modify storage item:armor ChangeType set value -1
# 逐一检测箱子
execute unless data entity @s EnderItems[{Count: 1b, Slot: 0b, tag: {armor_trim_set: 1b}}] run data modify storage item:armor ChangeType set value 0
execute unless data entity @s EnderItems[{Count: 1b, Slot: 1b, tag: {armor_trim_set: 1b}}] run data modify storage item:armor ChangeType set value 1
execute unless data entity @s EnderItems[{Count: 1b, Slot: 2b, tag: {armor_trim_set: 1b}}] run data modify storage item:armor ChangeType set value 2
execute unless data entity @s EnderItems[{Count: 1b, Slot: 3b, tag: {armor_trim_set: 1b}}] run data modify storage item:armor ChangeType set value 3
execute unless data entity @s EnderItems[{Count: 1b, Slot: 4b, tag: {armor_trim_set: 1b}}] run data modify storage item:armor ChangeType set value 4
execute unless data entity @s EnderItems[{Count: 1b, Slot: 5b, tag: {armor_trim_set: 1b}}] run data modify storage item:armor ChangeType set value 5
execute unless data entity @s EnderItems[{Count: 1b, Slot: 6b, tag: {armor_trim_set: 1b}}] run data modify storage item:armor ChangeType set value 6
execute unless data entity @s EnderItems[{Count: 1b, Slot: 7b, tag: {armor_trim_set: 1b}}] run data modify storage item:armor ChangeType set value 7
execute unless data entity @s EnderItems[{Count: 1b, Slot: 8b, tag: {armor_trim_set: 1b}}] run data modify storage item:armor ChangeType set value 8
execute unless data entity @s EnderItems[{Count: 1b, Slot: 9b, tag: {armor_trim_set: 1b}}] run data modify storage item:armor ChangeType set value 9
execute unless data storage item:armor {ChangeType: -1} run function item:armor_trim/enderchest/switches/type13/change with storage item:armor

# 返回
execute unless data entity @s EnderItems[{Count: 1b, Slot: 26b, tag: {armor_trim_set: 1b}}] run scoreboard players set @s enderchest_type 11
execute unless data entity @s EnderItems[{Count: 1b, Slot: 26b, tag: {armor_trim_set: 1b}}] run function item:armor_trim/enderchest/displays/type11/main