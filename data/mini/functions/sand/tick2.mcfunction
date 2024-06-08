execute as @a[team=playing] store result score @s posX run data get entity @s Pos[0] 10
execute as @a[team=playing] store result score @s posY run data get entity @s Pos[1] 10
execute as @a[team=playing] store result score @s posZ run data get entity @s Pos[2] 10

# 幻境干扰 1
execute if score $ley_line_disorder mem matches 1 run scoreboard players add $wb_count mem 1
execute if score $ley_line_disorder mem matches 1 if score $wb_count mem matches 2 run function mini:sand/game/lld/water_breathing
execute if score $ley_line_disorder mem matches 1 if score $wb_count mem matches 3 run effect clear @a[nbt={active_effects:[{amplifier:0b, id:"minecraft:water_breathing"}]}] water_breathing
execute if score $ley_line_disorder mem matches 1 if score $wb_count mem matches 3 run scoreboard players set $wb_count mem 0

# 检查物品
execute as @a[tag=mini_running] run function mini:sand/game/check_item

# 检查玩家存分
execute as @a[scores={chest_open=1..}] run function mini:sand/game/add_score

# Action Bar
tag @a remove store_hint
tag @a[x=2027,y=22,z=3012,dx=3,dy=1,dz=4,scores={gold_inhand=1..}] add store_hint
title @a[tag=mini_running,tag=!store_hint] actionbar [{"text": "当前携带金钱：","color": "green"},{"score": {"name": "*","objective": "gold_inhand"},"color": "gold"}]
title @a[tag=mini_running,tag=store_hint] actionbar [{"text": "请对箱子使用 ","color": "yellow"},{"keybind":"key.use","color": "gold"},{"text": " 来存放 ","color": "yellow"},{"score": {"name": "*","objective": "gold_inhand"},"color": "gold"},{"text": " 金钱！"}]

# 给予刷子
execute as @a[tag=mini_running] at @s unless data entity @s Inventory[{Slot: 8b, id: "minecraft:brush", tag: {game_item: 1b, Unbreakable: 1b}}] run function mini:sand/game/give_brush