# 找归属
execute store result score $snowball_owner mem run data get entity @s Owner[0]
execute as @a if score @s UUID = $snowball_owner mem run tag @s add snowball_owner

# 攻击次数
execute if score @a[tag=snowball_owner,limit=1] attack_count matches 1.. run summon marker ~ ~ ~ {Tags:["new_marker","vase_marker"]}
execute if score @a[tag=snowball_owner,limit=1] attack_count matches 1.. run ride @e[tag=new_marker,limit=1] mount @s
execute if score @a[tag=snowball_owner,limit=1] attack_count matches 1.. run tag @s add enchanted
execute if score @a[tag=snowball_owner,limit=1] attack_count matches 1.. run scoreboard players remove @a[tag=snowball_owner,limit=1] attack_count 1

# 标记
tag @s add fixed_snowball
tag @a remove snowball_owner
tag @e remove new_marker