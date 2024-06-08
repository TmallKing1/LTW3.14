# 判断是否满足施放元素爆发的条件
function mini:element/game/player/burst_check
scoreboard players operation $element_self mem = $burst_type mem
execute if score $element_self mem matches 0 at @s run return run function lib:sounds/error

# 自己为攻击者
tag @s add attacker

# 获取自己的标记
function mini:element/game/marker/find
tag @e[tag=found_marker] add self
data modify entity @e[tag=self,limit=1] data.elements set value []

# 特效
execute if score $element_self mem matches 1 at @s run playsound entity.ender_dragon.flap player @a ~ ~ ~ 1.0 1.0
execute if score $element_self mem matches 2 at @s run playsound block.anvil.land player @a ~ ~ ~ 1.0 1.0
execute if score $element_self mem matches 3 at @s run playsound entity.lightning_bolt.thunder player @a ~ ~ ~ 1.0 1.0
execute if score $element_self mem matches 4 at @s run playsound item.bucket.fill player @a ~ ~ ~ 1.0 1.0
execute if score $element_self mem matches 5 at @s run playsound block.fire.ambient player @a ~ ~ ~ 1.0 1.0
execute if score $element_self mem matches 6 at @s run playsound block.amethyst_block.break player @a ~ ~ ~ 1.0 1.0

execute if score $element_self mem matches 1 at @s run particle dust 0.129 0.455 0.545 1 ~ ~ ~ 2 2 2 0 1000 force @a
execute if score $element_self mem matches 2 at @s run particle block gold_block ~ ~ ~ 2 2 2 0 1000 force @a
execute if score $element_self mem matches 3 at @s run particle falling_obsidian_tear ~ ~ ~ 2 2 2 0 200 force @a
execute if score $element_self mem matches 4 at @s run particle falling_water ~ ~ ~ 2 2 2 0 2500 force @a
execute if score $element_self mem matches 5 at @s run particle flame ~ ~ ~ 2 2 2 0 500 force @a
execute if score $element_self mem matches 6 at @s run particle block blue_ice ~ ~ ~ 2 2 2 0 1000 force @a

# 元素效果
execute if score $element_self mem matches 1 run effect give @s speed 15 2 true
execute if score $element_self mem matches 1 run effect give @s jump_boost 15 2 true
execute if score $element_self mem matches 2 run effect give @s absorption infinite 2 true
execute if score $element_self mem matches 4 run effect give @s regeneration 15 1
execute if score $element_self mem matches 5 run effect give @s strength 15 10

# 对周围的每个玩家生效
execute at @s as @a[distance=0.001..4.5] at @s run function mini:element/game/player/burst_each

# 回复元素
function mini:element/game/marker/find
execute store result score $burst_count mem at @s if entity @a[distance=0.001..4.5]
execute if score $burst_count mem matches 6.. run scoreboard players set $burst_count mem 5
execute if score $burst_count mem matches 1.. run function mini:element/game/player/burst_recover

# 计数
scoreboard players add @s element_burst 1

# 删除标签
tag @e remove self