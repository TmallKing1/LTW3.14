# 获取自己的标记和元素附着
function mini:element/game/marker/find
data modify entity @e[tag=found_marker,limit=1] data.element_attach set value 0
scoreboard players reset @s countdown_attach