# 初始化僵尸地图
execute store result score $map mem run random value 1..2

# 多图处理
execute if score $map mem matches 1 run function mini:zombie/maps/1/game_init
execute if score $map mem matches 2 run function mini:zombie/maps/2/game_init

scoreboard players set $show_score mem 1
scoreboard players set $survival mem 0
scoreboard players set $new_item_cd mem 0
scoreboard players set $game_end_mode mem 1
scoreboard players set $zombie_stage mem 0

# 幻境干扰

execute store result score $random mem run random value 1..5
execute if score $random mem matches 1 run scoreboard players set $ley_line_disorder mem 1
execute if score $random mem matches 2 run scoreboard players set $ley_line_disorder mem 2
execute if score $random mem matches 3 run scoreboard players set $ley_line_disorder mem 3

# 重置计分板
scoreboard players reset * power_count
scoreboard players reset * power_count_temp
scoreboard players reset * kill_zombie

# 伤害管理
scoreboard players set $remove_resistance mem 1
team modify playing friendlyFire false
team modify playing collisionRule always
team modify playing deathMessageVisibility always
gamerule naturalRegeneration false

# gamerule 调整
gamerule doMobLoot false
gamerule fallDamage false

schedule function mini:zombie/game_init2 15t replace