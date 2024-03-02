# 检查自己有没有载具
scoreboard players set $has_vehicle mem 0
execute store success score $has_vehicle mem on vehicle if entity @s

# 若无载具，则造成伤害
execute if score $has_vehicle mem matches 0 positioned ~ 6 ~ run damage @p[distance=..2] 3 mini:element_damage
execute if score $has_vehicle mem matches 0 run kill