# 先清除所有的世界模式实体
kill @e[tag=world_entity]

# 从索引 0 开始到 40（不包括）
scoreboard players set $world_stage_index mem 0
data modify storage lib:arrays Array set from storage ltw:world Positions
function ltw:state/0/world/summon1
