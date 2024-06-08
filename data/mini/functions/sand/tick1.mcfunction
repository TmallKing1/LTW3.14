# 箱子变奖励物品
execute as @e[type=item,nbt={Item:{id:"minecraft:chest",tag:{sand_item: 1b}}}] at @s run function mini:sand/game/new_item

# 幻境干扰 1
execute if score $ley_line_disorder mem matches 1 as @a[tag=mini_running,nbt={Air:-19s}] run damage @s 114 drown