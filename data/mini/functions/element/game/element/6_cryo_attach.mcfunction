# 获取自己的标记和元素附着
function mini:element/game/marker/find
execute as @e[tag=found_marker] run function mini:element/game/element/get_attach

# 若无附着元素，则为自己挂冰
execute if score $element_type mem matches 0 run data modify entity @e[tag=found_marker,limit=1] data.element_attach set value 6
execute if score $element_type mem matches 0 run scoreboard players set @e[tag=found_marker,limit=1] countdown_attach 100

# 若已经挂上雷，则超导
execute if score $element_type mem matches 3 run function mini:element/game/element/reaction_chaodao

# 若已经挂上水，则冻结
execute if score $element_type mem matches 4 run function mini:element/game/element/reaction_dongjie

# 若已经挂上火，则融化
execute if score $element_type mem matches 5 run function mini:element/game/element/reaction_ronghua