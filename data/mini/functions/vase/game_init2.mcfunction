
# 清理残余实体
function mini:main/kill_entity

# 清理雪球与标记
kill @e[type=snowball]
kill @e[tag=vase_marker]
kill @e[type=item,nbt={Item:{id:"minecraft:acacia_button"}}]