
# 清理残余实体
function mini:main/kill_entity
tp @e[tag=bullet_entity] 1000 -100 18000
kill @e[tag=bullet_entity]
tp @e[type=vex] 1000 -100 18000
kill @e[type=vex]