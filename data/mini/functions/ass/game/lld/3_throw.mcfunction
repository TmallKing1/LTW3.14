# 生成苦力怕
execute anchored eyes run summon creeper ^ ^ ^0.3 {Tags: ["creeper1"], CustomName: '"Creeper"', ignited: 1b, Fuse: 22s, AbsorptionAmount: 1000}
# 生成标记
summon marker ^ ^ ^1 {Tags: ["marker1"]}
# 记录自己和标记的位置
execute store result score #x1 mem run data get entity @s Pos[0] 100
execute store result score #y1 mem run data get entity @s Pos[1] 100
execute store result score #z1 mem run data get entity @s Pos[2] 100
execute store result score #x2 mem run data get entity @e[tag=marker1,limit=1] Pos[0] 100
execute store result score #y2 mem run data get entity @e[tag=marker1,limit=1] Pos[1] 100
execute store result score #z2 mem run data get entity @e[tag=marker1,limit=1] Pos[2] 100
# 差储存为速度向量
execute store result entity @e[tag=creeper1,limit=1] Motion[0] double 0.02 run scoreboard players operation #x2 mem -= #x1 mem
execute store result entity @e[tag=creeper1,limit=1] Motion[1] double 0.02 run scoreboard players operation #y2 mem -= #y1 mem
execute store result entity @e[tag=creeper1,limit=1] Motion[2] double 0.02 run scoreboard players operation #z2 mem -= #z1 mem

# 清除标签与标记
kill @e[tag=marker1]
tag @e remove creeper1