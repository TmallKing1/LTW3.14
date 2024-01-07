# 获取自己的标记
function mini:element/game/marker/find

# 挂火
function mini:element/game/element/5_pyro_attach

# 造成火元素伤害
execute as @e[tag=found_marker,tag=!chaozai] run function mini:element/game/marker/remove_type_tags
tag @e[tag=found_marker] add pyrodamage
scoreboard players set $damage mem 1
function mini:element/game/damage/damage_none