# 获取自己的标记
function mini:element/game/marker/find

# 获取标记拥有的元素数量
execute store result score $element_size mem run data get entity @e[tag=found_marker,limit=1] data.elements
execute if score $element_size mem matches ..4 run tag @s add qualified