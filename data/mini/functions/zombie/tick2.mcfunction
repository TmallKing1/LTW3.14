# 给予超级木剑
execute as @a[tag=mini_running] at @s unless data entity @s Inventory[{Slot: 8b, id: "minecraft:wooden_sword", tag: {game_item: 1b}}] run function mini:zombie/game/give_sword

# 尝试生成僵尸
execute if score $countdown_fast mem matches ..0 run function mini:zombie/game/prepare_summon

# 僵尸下落高度判定与缓降效果给予
execute as @e[type=zombie] store result score @s fall_distance run data get entity @s FallDistance 10
execute as @e[type=zombie] if score @s fall_distance matches 35.. run data merge entity @s {active_effects: [{id: "slow_falling", duration: 5, show_icon: 0b, show_particles: 0b}]}

# 发射器僵尸每两秒发射一根箭矢
scoreboard players operation $cd_fast temp = $countdown_fast mem
scoreboard players operation $cd_fast temp %= #20 mem
execute if score $cd_fast temp matches 0 as @e[type=zombie,tag=dispenser_zombie] at @s positioned ~ ~1.5 ~ run function mini:zombie/game/summon_arrow
execute if score $cd_fast temp matches 0 as @e[type=zombie,tag=enchanted_dispenser_zombie] at @s positioned ~ ~1.5 ~ run function mini:zombie/game/summon_arrow

# 给击败僵尸的玩家回复生命值
effect give @a[scores={kill_zombie=1..}] instant_health 1 0 true
scoreboard players reset @a kill_zombie

# 给击败僵尸的玩家显示能量值获得提示
title @a[scores={power_count_temp=1..}] actionbar [{"text": "你获得了 ","color": "green"},{"score": {"name": "*","objective": "power_count_temp"},"color": "gold"},{"text": " 能量值"}]
scoreboard players set @a power_count_temp 0

# 清除落地的箭矢
kill @e[type=arrow,nbt={inGround: 1b}]

# 开启死亡提示
gamerule showDeathMessages true