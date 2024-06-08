# 造成伤害的方法
tag @s add attacker

# 如果手上拿着特殊的木剑，且受伤者攻击冷却结束，则进行元素判定
execute if data entity @s SelectedItem.tag.game_item if entity @p[tag=element_damage_taken,scores={damage_cd=0},distance=0.01..7] run function mini:element/game/events/damage_dealt2

# 清除标记的标签
tag @e remove self
tag @e remove target

tag @a remove attacker
tag @a remove element_damage_taken