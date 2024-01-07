# 记录衰变之箭的所有者
scoreboard players reset $uuid mem
execute if data entity @s {custom_potion_effects: [{id: "minecraft:wither"}]} store result score $uuid mem run data get entity @s Owner[0]

# 移除玩家标签
execute as @a[tag=mini_running] if score @s UUID = $uuid mem run tag @s remove kill_witch

# 测试完毕
tag @s add checked_arrow