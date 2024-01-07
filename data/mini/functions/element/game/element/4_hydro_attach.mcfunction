# 获取自己的标记和元素附着
function mini:element/game/marker/find
execute as @e[tag=found_marker] run function mini:element/game/element/get_attach

# 若无附着元素，则为自己挂水
execute if score $element_type mem matches 0 run data modify entity @e[tag=found_marker,limit=1] data.element_attach set value 4
execute if score $element_type mem matches 0 run scoreboard players set @e[tag=found_marker,limit=1] countdown_fast 100

# 若已经挂上雷，则感电
execute if score $element_type mem matches 3 run function mini:element/game/element/reaction_gandian

# 若已经挂上火，则蒸发
execute if score $element_type mem matches 5 run function mini:element/game/element/reaction_zhengfa

# 若已经挂上冰，则冻结
execute if score $element_type mem matches 6 run function mini:element/game/element/reaction_dongjie