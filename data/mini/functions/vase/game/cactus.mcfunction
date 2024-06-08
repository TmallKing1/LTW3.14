# 获取归属
execute store result score $owner_uuid mem run data get entity @s Item.tag.SourceUUID
execute as @a[tag=mini_running] if score @s UUID = $owner_uuid mem run tag @s add cactus_owner

# 根据仙人掌类型执行方法
execute unless data entity @s Item.tag.SherdType run scoreboard players add @a[tag=cactus_owner] vase_broken 1
execute unless data entity @s Item.tag.SherdType run scoreboard players add @a[tag=cactus_owner] vase_broken_pure 1

# 随机罐子
execute if data entity @s Item.tag{SherdType:"minecraft:explorer_pottery_sherd"} store result score $random mem run random value 1..10
execute if data entity @s Item.tag{SherdType:"minecraft:explorer_pottery_sherd"} if score $random mem matches 1..3 run data modify entity @s Item.tag.SherdType set value "minecraft:heart_pottery_sherd"
execute if data entity @s Item.tag{SherdType:"minecraft:explorer_pottery_sherd"} if score $random mem matches 4..6 run data modify entity @s Item.tag.SherdType set value "minecraft:danger_pottery_sherd"
execute if data entity @s Item.tag{SherdType:"minecraft:explorer_pottery_sherd"} if score $random mem matches 7..9 run data modify entity @s Item.tag.SherdType set value "minecraft:blade_pottery_sherd"
execute if data entity @s Item.tag{SherdType:"minecraft:explorer_pottery_sherd"} if score $random mem matches 10 run data modify entity @s Item.tag.SherdType set value "minecraft:prize_pottery_sherd"

# 回血罐子
execute if data entity @s Item.tag{SherdType:"minecraft:heart_pottery_sherd"} unless score $ley_line_disorder mem matches 4 run effect give @a[tag=cactus_owner] regeneration 1 3
execute if data entity @s Item.tag{SherdType:"minecraft:heart_pottery_sherd"} if score $ley_line_disorder mem matches 4 run effect give @a[tag=cactus_owner] regeneration 2 3
execute if data entity @s Item.tag{SherdType:"minecraft:heart_pottery_sherd"} run tag @a[tag=cactus_owner] add vase_regenerated

# 爆炸罐子
scoreboard players set $explode_damage_count mem 0
execute if data entity @s Item.tag{SherdType:"minecraft:danger_pottery_sherd"} store result score $explode_damage_count mem if entity @a[tag=mini_running,distance=..5]
execute if data entity @s Item.tag{SherdType:"minecraft:danger_pottery_sherd"} run scoreboard players operation @a[tag=cactus_owner] creeper_vase_damage += $explode_damage_count mem
execute if data entity @s Item.tag{SherdType:"minecraft:danger_pottery_sherd"} unless score $ley_line_disorder mem matches 3 as @a[tag=mini_running,distance=..5] run damage @s 4 mini:element_damage at ~ ~ ~
execute if data entity @s Item.tag{SherdType:"minecraft:danger_pottery_sherd"} if score $ley_line_disorder mem matches 3 as @a[tag=mini_running,distance=..6] run damage @s 5 mini:element_damage at ~ ~ ~
execute if data entity @s Item.tag{SherdType:"minecraft:danger_pottery_sherd"} run playsound entity.generic.explode block @a ~ ~ ~
execute if data entity @s Item.tag{SherdType:"minecraft:danger_pottery_sherd"} run particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force @a

# 攻击罐子
execute if data entity @s Item.tag{SherdType:"minecraft:blade_pottery_sherd"} run scoreboard players add @a[tag=cactus_owner] attack_count 1
execute if data entity @s Item.tag{SherdType:"minecraft:blade_pottery_sherd"} if score $ley_line_disorder mem matches 2 run scoreboard players add @a[tag=cactus_owner] attack_count 2
execute if data entity @s Item.tag{SherdType:"minecraft:blade_pottery_sherd"} run title @a[tag=cactus_owner] actionbar {"text": "你获得了可对其他玩家造成伤害的雪球！","color": "green"}
execute if data entity @s Item.tag{SherdType:"minecraft:blade_pottery_sherd"} as @a[tag=cactus_owner] at @s run function lib:sounds/hit

# 奖励物品罐子
execute if data entity @s Item.tag{SherdType:"minecraft:prize_pottery_sherd"} run function mini:vase/game/new_item

# 除tag
tag @a remove cactus_owner

# 杀死自己
kill