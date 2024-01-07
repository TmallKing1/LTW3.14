# 生成箭
summon arrow ^ ^ ^0.4 {Tags:["arrow"],damage:2.0,pickup:0b,PierceLevel:10}
execute as @s[tag=enchanted_dispenser_zombie] run data merge entity @e[tag=arrow,limit=1] {custom_potion_effects:[{id:"slowness",amplifier:1,duration:100,show_particles:false,show_icon:false},{id:"weakness",amplifier:0,duration:100,show_particles:false,show_icon:false}],CustomPotionColor:14697770}
data modify entity @e[tag=arrow,limit=1] Owner set from entity @s UUID
# 先设定投掷物的方向
data modify entity @e[tag=arrow,limit=1] Rotation set from entity @s Rotation
# 再tp一个同方向稍远的标记
summon marker ^ ^ ^1 {Tags:["arrow_mark"]} 
# 记录投掷物和标记的位置
execute store result score #x1 mem run data get entity @e[tag=arrow,limit=1] Pos[0] 100
execute store result score #y1 mem run data get entity @e[tag=arrow,limit=1] Pos[1] 100
execute store result score #z1 mem run data get entity @e[tag=arrow,limit=1] Pos[2] 100
execute store result score #x2 mem run data get entity @e[tag=arrow_mark,limit=1] Pos[0] 100
execute store result score #y2 mem run data get entity @e[tag=arrow_mark,limit=1] Pos[1] 100
execute store result score #z2 mem run data get entity @e[tag=arrow_mark,limit=1] Pos[2] 100
# 差储存为速度向量
execute store result entity @e[tag=arrow,limit=1] Motion[0] double 0.02 run scoreboard players operation #x2 mem -= #x1 mem
execute store result entity @e[tag=arrow,limit=1] Motion[1] double 0.02 run scoreboard players operation #y2 mem -= #y1 mem
execute store result entity @e[tag=arrow,limit=1] Motion[2] double 0.02 run scoreboard players operation #z2 mem -= #z1 mem
# 清理
tag @e remove arrow
kill @e[tag=arrow_mark,type=marker]