# 缓存点击玩家的UUID
execute store result score $uuid temp run data get entity @s interaction.player[0]

# 标记点击交互实体的玩家
execute as @a[tag=mini_running,tag=!has_mats] if score @s UUID = $uuid temp run tag @s add giving_mats

# 若有玩家，则执行获得物资方法
execute if entity @a[tag=giving_mats] run function mini:river/game/acquire_mats

# 移除标签
tag @a remove giving_mats