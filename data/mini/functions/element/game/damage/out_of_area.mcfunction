# 获取标记
function mini:element/game/marker/find

# 标记添加标签
tag @e[tag=found_marker] add outofarea

# 造成伤害
scoreboard players set $damage mem 40
function mini:element/game/damage/damage_none