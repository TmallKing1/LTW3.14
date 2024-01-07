# 防止玩家丢弃物品：如果物品存在 Thrower 则要求强制捡起
execute as @e[type=item] if data entity @s Thrower run function item:disable_throw

# 检查无法破坏附魔书
execute as @a if data entity @s Inventory[{Slot: -106b}].tag.unbreakable_enchantment at @s run function item:special/u_enchanted_book

# 检查玩家拾取奖励物品
execute as @a if data entity @s Inventory[{tag: {bonus_new: 1b}}] run function item:bonus_item/call

# 检测玩家格子锁定
execute if score $state mem matches 1.. unless score $survival mem matches 1 as @a[team=!debugging] run function item:disable_slot/check_slot
execute if score $state mem matches 1.. as @a[team=!debugging] unless data entity @s Inventory[{Slot: 35b, tag: {destroy: 1b}, Count: 1b}] run function item:disable_slot/destroy
execute if score $state mem matches 0 as @a run function ltw:state/0/state/check_slot
execute if score $state mem matches 0.. run kill @e[type=item,tag=LockTempItem]

# 命令方块
execute if score $state mem matches 1.. as @a[team=!debugging] run function item:disable_slot/command_block_test

# 检查购买物品
execute as @a run function item:shop/check

# 物品特效
execute as @e[tag=item_green] at @s run particle minecraft:glow ~ ~0.3 ~ 0.5 0.5 0.5 0 1 normal
execute as @e[tag=item_blue] at @s run particle minecraft:dragon_breath ~ ~0.3 ~ 0.7 0.7 0.7 0.01 1 normal
execute as @e[tag=item_blue] at @s run particle minecraft:dragon_breath ~ ~0.3 ~ 1.3 1.3 1.3 0.01 1 normal
execute as @e[tag=item_purple] at @s run particle minecraft:wax_on ~ ~0.3 ~ 0 0 0 6 1 normal
execute as @e[tag=item_purple] at @s run particle minecraft:wax_on ~ ~0.3 ~ 0.7 0.7 0.7 1 1 normal
execute as @e[tag=item_purple] at @s run particle minecraft:wax_on ~ ~0.3 ~ 1.5 1.5 1.5 1 2 normal
execute as @e[tag=item_purple] at @s run particle minecraft:wax_on ~ ~0.3 ~ 2.5 2.5 2.5 1 1 normal

# 禁止捡起、在落地 10 秒后清理
execute unless score $mini_type mem matches 202 as @e[type=arrow,tag=!projectile_checked] run data merge entity @s {pickup: 0, life: 1000, Tags: ["projectile_checked"]}
execute if score $mini_type mem matches 202 as @e[type=spectral_arrow,tag=!projectile_checked] run data merge entity @s {pickup: 0, life: 1000, Tags: ["projectile_checked"]}
execute as @e[type=arrow,tag=projectile_checked] if data entity @s {inGround: 1b, Color: 1524309} run function item:special/give_back_arrow

# 调用粒子模块
function item:particle/tick2

