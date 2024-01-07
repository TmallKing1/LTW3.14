# 获取玩家对应的标记
function mini:element/game/marker/find

# 标签
execute as @e[tag=found_marker] run function mini:element/game/marker/remove_type_tags
tag @e[tag=found_marker] add chaozai

# 造成伤害
execute if score $random mem matches 3 if entity @p[tag=attacker] as @a[distance=..5,tag=!attacker] run damage @s 3 mini:element_damage by @p[tag=attacker]
execute if score $random mem matches 3 unless entity @p[tag=attacker] as @a[distance=..5,tag=!attacker] run damage @s 3 mini:element_damage
execute if score $random mem matches 4 if entity @p[tag=attacker] as @a[distance=..5,tag=!attacker] run damage @s 4 mini:element_damage by @p[tag=attacker]
execute if score $random mem matches 4 unless entity @p[tag=attacker] as @a[distance=..5,tag=!attacker] run damage @s 4 mini:element_damage