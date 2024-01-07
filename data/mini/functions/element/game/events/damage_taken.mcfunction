# 受到伤害的方法

# 获取自己的标记
function mini:element/game/marker/find

# 标记记录最近攻击自己的玩家
data modify entity @e[tag=found_marker,limit=1] data.last_damage set value []
execute on attacker run data modify entity @e[tag=found_marker,limit=1] data.last_damage set from entity @s UUID

# 添加受伤tag
tag @s add element_damage_taken