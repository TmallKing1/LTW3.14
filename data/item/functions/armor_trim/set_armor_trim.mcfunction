#> item:armor_trim/set_armor_trim
# 设置盔甲纹饰

scoreboard players set $trim_code mem 0

# 判断盔甲类型
execute as @e[type=armor_stand,tag=armor_check] if predicate item:bonus/armor_trim/is_turtle run scoreboard players operation $trim_code mem = @p[tag=item_op] trim_turtle
execute as @e[type=armor_stand,tag=armor_check] if predicate item:bonus/armor_trim/is_leather run scoreboard players operation $trim_code mem = @p[tag=item_op] trim_leather
execute as @e[type=armor_stand,tag=armor_check] if predicate item:bonus/armor_trim/is_chainmail run scoreboard players operation $trim_code mem = @p[tag=item_op] trim_chainmail
execute as @e[type=armor_stand,tag=armor_check] if predicate item:bonus/armor_trim/is_iron run scoreboard players operation $trim_code mem = @p[tag=item_op] trim_iron
execute as @e[type=armor_stand,tag=armor_check] if predicate item:bonus/armor_trim/is_gold run scoreboard players operation $trim_code mem = @p[tag=item_op] trim_gold
execute as @e[type=armor_stand,tag=armor_check] if predicate item:bonus/armor_trim/is_diamond run scoreboard players operation $trim_code mem = @p[tag=item_op] trim_diamond
execute as @e[type=armor_stand,tag=armor_check] if predicate item:bonus/armor_trim/is_netherite run scoreboard players operation $trim_code mem = @p[tag=item_op] trim_netherite

# 若值不为 0，则进行余下处理
execute unless score $trim_code mem matches 0 run function item:armor_trim/set_armor_trim1