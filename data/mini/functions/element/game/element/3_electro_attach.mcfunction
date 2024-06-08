# 获取自己的标记和元素附着
function mini:element/game/marker/find
execute as @e[tag=found_marker] run function mini:element/game/element/get_attach

# 若无附着元素，则为自己挂雷
execute if score $element_type mem matches 0 run data modify entity @e[tag=found_marker,limit=1] data.element_attach set value 3
execute if score $element_type mem matches 0 run scoreboard players set @e[tag=found_marker,limit=1] countdown_attach 100

# 若已经挂上水，则感电
execute if score $element_type mem matches 4 run function mini:element/game/element/reaction_gandian

# 若已经挂上火，则超载
execute if score $element_type mem matches 5 run function mini:element/game/element/reaction_chaozai

# 若已经挂上冰，则超导
execute if score $element_type mem matches 6 run function mini:element/game/element/reaction_chaodao