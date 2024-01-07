summon axolotl ~ ~ ~ {Variant: 0, Tags: ["circle_entity", "new_entity", "leashed"]}

# 绑定玩家
data modify entity @e[tag=new_entity,limit=1] Leash.UUID set from entity @s UUID

tag @e remove new_entity
tag @s remove summon_axolotl