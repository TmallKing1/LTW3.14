execute store result score $random mem run random value 0..1
execute if score $random mem matches 0 run summon arrow ~ ~ ~ {Tags:["new_arrow"],Motion: [1.0d, -0.5d, 0.0d]}
execute if score $random mem matches 0 run summon arrow ~ ~ ~ {Tags:["new_arrow"],Motion: [-1.0d, -0.5d, 0.0d]}
execute if score $random mem matches 0 run summon arrow ~ ~ ~ {Tags:["new_arrow"],Motion: [0.0d, -0.5d, 1.0d]}
execute if score $random mem matches 0 run summon arrow ~ ~ ~ {Tags:["new_arrow"],Motion: [0.0d, -0.5d, -1.0d]}
execute if score $random mem matches 1 run summon arrow ~ ~ ~ {Tags:["new_arrow"],Motion: [0.707d, -0.5d, 0.707d]}
execute if score $random mem matches 1 run summon arrow ~ ~ ~ {Tags:["new_arrow"],Motion: [-0.707d, -0.5d, -0.707d]}
execute if score $random mem matches 1 run summon arrow ~ ~ ~ {Tags:["new_arrow"],Motion: [0.707d, -0.5d, -0.707d]}
execute if score $random mem matches 1 run summon arrow ~ ~ ~ {Tags:["new_arrow"],Motion: [-0.707d, -0.5d, 0.707d]}
data modify storage mini:arrow Owner set from entity @s Owner
execute as @e[tag=new_arrow] run data modify entity @s Owner set from storage mini:arrow Owner
tag @e remove new_arrow
kill