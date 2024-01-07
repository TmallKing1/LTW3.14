# 随机选择箭的生成方位
execute store result score $random mem run random value 0..1

# 生成箭
execute if score $random mem matches 0 positioned ~1.5 ~0.8 ~ run summon arrow ~ ~ ~ {Motion: [-1.0d, -1.0d, 0.0d], Tags: ["fd"]}
execute if score $random mem matches 0 positioned ~ ~0.8 ~1.5 run summon arrow ~ ~ ~ {Motion: [0.0d, -1.0d, -1.0d], Tags: ["fd"]}
execute if score $random mem matches 1 positioned ~-1.5 ~0.8 ~ run summon arrow ~ ~ ~ {Motion: [1.0d, -1.0d, 0.0d], Tags: ["fd"]}
execute if score $random mem matches 1 positioned ~ ~0.8 ~-1.5 run summon arrow ~ ~ ~ {Motion: [0.0d, -1.0d, 1.0d], Tags: ["fd"]}

# 防止箭伤到自己
data modify storage mini:arrow Owner set from entity @s Owner
execute as @e[tag=fd] run data modify entity @s Owner set from storage mini:arrow Owner
tag @e remove fd