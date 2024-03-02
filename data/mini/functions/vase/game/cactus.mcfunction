# 获取归属
execute store result score $owner_uuid mem run data get entity @s Item.tag.SourceUUID
execute as @a[tag=mini_running] if score @s UUID = $owner_uuid mem run tag @s add cactus_owner

# 根据仙人掌类型执行方法
execute unless data entity @s Item.tag.SherdType run scoreboard players add @a[tag=cactus_owner] vase_broken 1

# 回血罐子
execute if data entity @s Item.tag{SherdType:"minecraft:heart_pottery_sherd"} run effect give @a[tag=cactus_owner] regeneration 1 3

# 爆炸罐子
execute if data entity @s Item.tag{SherdType:"minecraft:danger_pottery_sherd"} as @a[tag=mini_running,distance=..5] run damage @s 4 mini:element_damage at ~ ~ ~
execute if data entity @s Item.tag{SherdType:"minecraft:danger_pottery_sherd"} run playsound entity.generic.explode block @a ~ ~ ~
execute if data entity @s Item.tag{SherdType:"minecraft:danger_pottery_sherd"} run particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force @a

# 攻击罐子
execute if data entity @s Item.tag{SherdType:"minecraft:blade_pottery_sherd"} run scoreboard players add @a[tag=cactus_owner] attack_count 1
execute if data entity @s Item.tag{SherdType:"minecraft:blade_pottery_sherd"} run title @a[tag=cactus_owner] actionbar {"text": "你获得了一个可对其他玩家造成伤害的雪球！","color": "green"}
execute if data entity @s Item.tag{SherdType:"minecraft:blade_pottery_sherd"} as @a[tag=cactus_owner] at @s run function lib:sounds/hit

# 奖励物品罐子
execute if data entity @s Item.tag{SherdType:"minecraft:prize_pottery_sherd"} run function mini:vase/game/new_item

# 除tag
tag @a remove cactus_owner

# 杀死自己
kill