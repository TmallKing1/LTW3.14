# 获取自己的标记和元素附着
function mini:element/game/marker/find
execute as @e[tag=found_marker] run function mini:element/game/element/get_attach

# 若无附着元素，则为自己挂火
execute if score $element_type mem matches 0 run data modify entity @e[tag=found_marker,limit=1] data.element_attach set value 5
execute if score $element_type mem matches 0 run scoreboard players set @e[tag=found_marker,limit=1] countdown_fast 100

# 若自己被冻结，则解冻
execute if entity @e[tag=found_marker,tag=dongjie] run tag @e[tag=target,limit=1,tag=dongjie] add dongjie_jiechu
execute if entity @e[tag=found_marker,tag=dongjie] run scoreboard players add $damage mem 6
execute if entity @e[tag=found_marker,tag=dongjie] run tag @e[tag=target,limit=1,tag=dongjie] remove dongjie

# 若已经挂上雷，则超载
execute if score $element_type mem matches 3 run function mini:element/game/element/reaction_chaozai

# 若已经挂上水，则蒸发
execute if score $element_type mem matches 4 run function mini:element/game/element/reaction_zhengfa

# 若已经挂上冰，则融化
execute if score $element_type mem matches 6 run function mini:element/game/element/reaction_ronghua