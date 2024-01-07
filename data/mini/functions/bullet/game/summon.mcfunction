# 召唤新的实体

# 决定生成的实体类型
execute store result score $random mem run random value 1..100
execute if score $random mem matches 1..70 run summon zombie 1010.0 69 18010.0 {Tags:["new_entity","bullet_entity"]}
execute if score $random mem matches 71..80 run summon vindicator 1010.0 69 18010.0 {Tags:["new_entity","bullet_entity"]}
execute if score $random mem matches 81..87 run summon witch 1010.0 69 18010.0 {Tags:["new_entity","bullet_entity"]}
execute if score $random mem matches 88..94 run summon evoker 1010.0 69 18010.0 {Tags:["new_entity","bullet_entity"]}
execute if score $random mem matches 95..100 run summon villager 1010.0 69 18010.0 {Tags:["new_entity","bullet_entity"]}

# 随机传送
spreadplayers 1010.0 18010.0 0 9 false @e[tag=new_entity]

# 选择方位
execute store result score $random mem run random value 1..4
execute if score $random mem matches 1 as @e[tag=new_entity] at @s run tp @s 1002.0 ~ ~
execute if score $random mem matches 2 as @e[tag=new_entity] at @s run tp @s ~ ~ 18002.0
execute if score $random mem matches 3 as @e[tag=new_entity] at @s run tp @s 1018.0 ~ ~
execute if score $random mem matches 4 as @e[tag=new_entity] at @s run tp @s ~ ~ 18018.0

# 传送下去
execute unless score $ley_line_disorder mem matches 1 as @e[tag=new_entity] at @s run tp @s ~ 65.0 ~
execute if score $ley_line_disorder mem matches 1 as @e[tag=new_entity] at @s run tp @s ~ 6 ~

# 设置属性
attribute @e[tag=new_entity,limit=1,type=zombie] generic.max_health base set 15
attribute @e[tag=new_entity,limit=1,type=vindicator] generic.max_health base set 25
attribute @e[tag=new_entity,limit=1,type=witch] generic.max_health base set 15
attribute @e[tag=new_entity,limit=1,type=evoker] generic.max_health base set 20
attribute @e[tag=new_entity,limit=1,type=villager] generic.max_health base set 1
attribute @e[tag=new_entity,limit=1] generic.follow_range base set 0
data modify entity @e[tag=new_entity,limit=1] Health set from entity @e[tag=new_entity,limit=1] Attributes[{Name:"minecraft:generic.max_health"}].Base

# 缓降或飘浮
execute unless score $ley_line_disorder mem matches 1 run effect give @e[tag=new_entity] slow_falling infinite 0 true
execute if score $ley_line_disorder mem matches 1 run effect give @e[tag=new_entity] levitation infinite 1 true

# 村民的额外处理
scoreboard players operation @e[type=villager,tag=new_entity] villager_id = $villager_id mem
item replace entity @e[type=villager,tag=new_entity] armor.head with apple
execute as @e[type=villager,tag=new_entity] at @s run summon silverfish ~ ~2 ~ {Tags:["new_entity","bullet_entity"],Silent:1b, NoAI: 1b}
scoreboard players operation @e[type=silverfish,tag=new_entity] villager_id = $villager_id mem
effect give @e[type=silverfish,tag=new_entity] invisibility infinite 0 true
execute as @e[type=villager,tag=new_entity] run scoreboard players add $villager_id mem 1
attribute @e[tag=new_entity,type=silverfish,limit=1] generic.max_health base set 4

# 处理完毕
tag @e remove new_entity