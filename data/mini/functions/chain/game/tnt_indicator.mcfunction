# 找到距离自己最近的 TNT
tag @e[tag=chain_tnt,limit=1,sort=nearest] add targeted_tnt

# 生成一个标记
summon marker ~ ~ ~ {Tags:["tnt_indicator"]}

# 递归。。。。。。
function mini:chain/game/tnt_indicator1

# 取消标记
tag @e remove targeted_tnt