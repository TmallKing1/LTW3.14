# 检测漏斗矿车内的物品实体并清除
kill @e[type=item,nbt={Item: {tag: {hopper_item: 1b}}}]

# 副手生成漏斗矿车
execute as @a[team=playing,tag=mini_running] if data entity @s {SelectedItem: {id: "minecraft:hopper_minecart"}} run title @s actionbar [{"text": "按 ","color": "green"},{"keybind":"key.swapOffhand"}," 部署矿车"]
execute as @a[team=playing,tag=mini_running] if data entity @s Inventory.[{Slot: -106b, id: "minecraft:hopper_minecart"}] at @s run function mini:hopper/game/hopper_mc/spawn

# 幻境干扰显示
execute if score $lld_prepare mem matches 1.. run function mini:main/lld/prepare_display

# 幻境干扰
execute if score $ley_line_disorder mem matches 1 run function mini:iron/game/lld/1_disorder