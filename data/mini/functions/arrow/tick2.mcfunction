# 玩家死亡判断
execute as @a[tag=mini_running] at @s if block ~ ~ ~ water run function mini:arrow/player_failed
execute as @a[tag=mini_running] at @s if block ~ ~1 ~ water run function mini:arrow/player_failed

# 给予光灵箭
execute if score $allow_bow mem matches 1 as @a[tag=mini_running] unless data entity @s Inventory[{Slot: -106b, id: "minecraft:spectral_arrow", tag: {game_item: 1b}}] run function mini:arrow/game/give_arrow

# 给予弓
execute if score $allow_bow mem matches 1 unless score $ley_line_disorder mem matches 2 as @a[tag=mini_running] at @s unless data entity @s Inventory[{Slot: 8b, id: "minecraft:bow", tag: {game_item: 1b, Unbreakable: 1b}}] run function mini:arrow/game/give_bow
execute if score $allow_bow mem matches 1 if score $ley_line_disorder mem matches 2 as @a[tag=mini_running] at @s unless data entity @s Inventory[{Slot: 8b, id: "minecraft:crossbow", tag: {game_item: 1b, Unbreakable: 1b}}] run function mini:arrow/game/give_bow
