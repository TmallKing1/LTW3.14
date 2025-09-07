# 给予击退鱼（仅当幻境干扰不为 1 时）
execute unless score $ley_line_disorder mem matches 1 as @a[tag=mini_running] at @s if block ~ 9 ~ red_mushroom_block unless data entity @s Inventory[{Slot:8b,id:"minecraft:cod",tag:{game_item:1b,powerful:0b}}] run function mini:koth/game/give_fish
execute unless score $ley_line_disorder mem matches 1 as @a[tag=mini_running] at @s unless block ~ 9 ~ red_mushroom_block unless data entity @s Inventory[{Slot:8b,id:"minecraft:cod",tag:{game_item:1b,powerful:1b}}] run function mini:koth/game/give_fish

# 如果储存能量值数量大于等于 1 的玩家离开了红区，则获得 1/4 的能量值
execute if score $ley_line_disorder mem matches -1 as @a[tag=mini_running] at @s if block ~ 9 ~ red_mushroom_block run title @s actionbar ["当前击退鱼能量值：",{"score":{"name": "*","objective": "power_count_temp"},"color": "aqua"}]
execute if score $ley_line_disorder mem matches -1 as @a[tag=mini_running,scores={power_count_temp=1..}] at @s unless block ~ 9 ~ red_mushroom_block run function mini:koth/game/power_puni