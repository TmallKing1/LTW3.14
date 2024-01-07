# 使用只因刷怪蛋调用函数
#execute as @a[tag=mini_running,scores={duckUse=1..}] run function mini:duckrush/game/use_duck
# 给予只因刷怪蛋
execute as @a[tag=mini_running,scores={countdown_fast=0}] unless data entity @s Inventory[{Slot:8b,id:"minecraft:chicken_spawn_egg",tag:{game_item:1b}}] run function mini:duckrush/game/give_duck

# 使用水桶调用函数
execute as @a[tag=mini_running,scores={bucketUse=1..}] run function mini:duckrush/game/use_bucket
# 给予水桶
execute as @a[tag=mini_running,scores={countdown=0}] unless data entity @s Inventory[{Slot:7b,id:"minecraft:water_bucket",tag:{game_item:1b}}] run function mini:duckrush/game/give_bucket

# 取消鸭子无害
execute as @e[type=chicken,tag=harmless_duck,scores={countdown_fast=0}] run function mini:duckrush/game/harmful_duck