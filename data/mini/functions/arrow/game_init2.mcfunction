
# 清理残余实体
function mini:main/kill_entity
kill @e[type=tnt]
kill @e[type=spectral_arrow]

# 生成奖励
execute positioned 1016.0 12.2 13016.0 run function item:bonus_item/gameparty/auto/low
