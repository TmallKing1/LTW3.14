# 给予普通箭/衰变箭
execute as @a[tag=mini_running,tag=!kill_witch] unless data entity @s Inventory[{Slot: -106b, id: "minecraft:arrow", tag: {game_item: 1b}}] run function mini:bullet/game/give_arrow
execute as @a[tag=mini_running,tag=kill_witch] unless data entity @s Inventory[{Slot: -106b, id: "minecraft:tipped_arrow", tag: {game_item: 1b}}] run function mini:bullet/game/give_wither_arrow

# 给予弓
execute as @a[tag=mini_running] at @s unless data entity @s Inventory[{Slot: 8b, id: "minecraft:bow", tag: {game_item: 1b, Unbreakable: 1b}}] run function mini:bullet/game/give_bow

# 清除所有玩家的发光效果与凋零效果
effect clear @a glowing
effect clear @a wither

# 玩家死亡判定
execute as @a[x=1001,y=6,z=18001,dx=17,dy=3,dz=17,tag=mini_running] at @s run function mini:main/player_failed

# 生物死亡判定
execute unless score $ley_line_disorder mem matches 1 run kill @e[x=1001,y=6,z=18001,dx=17,dy=3,dz=17,tag=bullet_entity]
execute if score $ley_line_disorder mem matches 1 run kill @e[x=1001,y=65,z=18001,dx=17,dy=3,dz=17,tag=bullet_entity]
