# 投掷雪球
execute as @a[tag=mini_running,scores={use_snowball=1..}] at @s run function mini:vase/game/use_snowball

# 给予雪球
execute as @a[tag=mini_running,scores={countdown_fast=0}] unless score @s attack_count matches 1.. unless data entity @s Inventory[{Slot:8b,id:"minecraft:snowball",tag:{game_item:1b}}] run function mini:vase/game/give_snowball
execute as @a[tag=mini_running,scores={countdown_fast=0}] unless score @s attack_count matches 1.. if data entity @s Inventory[{Slot:8b,id:"minecraft:snowball",tag:{game_item:1b}}].tag.Enchantments run function mini:vase/game/give_snowball
execute as @a[tag=mini_running,scores={countdown_fast=0}] if score @s attack_count matches 1.. unless data entity @s Inventory[{Slot:8b,id:"minecraft:snowball",tag:{game_item:1b,Enchantments:[{id:"minecraft:infinity",lvl:1s}]}}] run function mini:vase/game/give_snowball