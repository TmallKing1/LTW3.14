# 物品特效
execute as @e[tag=item_gray] at @s run particle minecraft:wax_on ~ ~0.3 ~ 0.2 0.2 0.2 0 1 normal
execute as @e[tag=item_green] at @s run particle minecraft:glow ~ ~0.3 ~ 0.2 0.2 0.2 0 1 normal

# 检查玩家兑换码
execute as @a if data entity @s Inventory[{Slot:-106b,id:"minecraft:written_book"}] run function item:shop/check_book

# 调用粒子模块
function item:particle/tick5