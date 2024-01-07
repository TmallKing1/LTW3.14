# 出售物品
execute as @a store result score @s temp run clear @s enchanted_book{hopper_item: 1b}
execute if entity @a[scores={temp=1..}] run function mini:hopper/game/hopper_mc/sell_each

# 如果没有拥有附魔书的玩家则重置附魔书
execute unless entity @a[scores={temp=1..}] run item replace entity @s container.4 with enchanted_book{hopper_item: 1b}
execute unless entity @a[scores={temp=1..}] run item modify entity @s container.4 mini:hopper/enchanted_book