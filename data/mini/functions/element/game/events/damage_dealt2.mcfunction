# 获取自己的标记
function mini:element/game/marker/find
tag @e[tag=found_marker] add self

# 获取受伤者的标记
execute as @p[tag=element_damage_taken,distance=0.01..7] run function mini:element/game/marker/find
tag @e[tag=found_marker] add target

# 移除受伤者的伤害类型标签
execute as @e[tag=target] run function mini:element/game/marker/remove_type_tags

# 获取标记的第一个元素
execute as @e[tag=self] run function mini:element/game/element/get_first
scoreboard players operation $element_self mem = $element_type mem

# 若元素为 0，则根据目标是否处于超导状态与冻结状态对目标造成物理伤害
execute if score $element_self mem matches 0 run scoreboard players set $damage mem 1
execute if score $element_self mem matches 0 if entity @e[tag=target,limit=1,tag=chaodao] run scoreboard players add $damage mem 5
execute if score $element_self mem matches 0 if entity @e[tag=target,limit=1,tag=dongjie] run scoreboard players set $damage mem 6
execute if score $element_self mem matches 0 if entity @e[tag=attacker,nbt={active_effects:[{id:"minecraft:strength",amplifier:10b}]}] run scoreboard players add $damage mem 3
execute if score $element_self mem matches 0 run tag @e[tag=target,limit=1,tag=dongjie] add dongjie_jiechu
execute if score $element_self mem matches 0 run tag @e[tag=target,limit=1,tag=dongjie] remove dongjie
execute if score $element_self mem matches 0 run tag @e[tag=target,limit=1] add wulidamage

# 若元素不为 0，则依据木剑元素和目标标记所带元素判断伤害类型和造成伤害、删除元素
execute unless score $element_self mem matches 0 run function mini:element/game/damage/test

# 造成伤害
execute as @p[tag=element_damage_taken] run function mini:element/game/damage/damage_by