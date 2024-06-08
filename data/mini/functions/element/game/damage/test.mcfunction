# 获取目标标记的附着元素
execute as @e[tag=target] run function mini:element/game/element/get_attach
scoreboard players operation $element_target mem = $element_type mem

# 风元素
execute if score $element_self mem matches 1 run scoreboard players set $damage mem 10

# 岩元素
execute if score $element_self mem matches 2 run scoreboard players set $damage mem 14

# 雷-冰
execute if score $element_self mem matches 3..6 run scoreboard players set $damage mem 12

# 元素附着与反应
function mini:element/game/element/reaction

# 删除元素
data remove entity @e[tag=self,limit=1] data.elements[0]