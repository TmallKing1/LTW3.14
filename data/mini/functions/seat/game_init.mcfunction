# 初始化抢座地图
forceload add 1000 10000 1031 10031
setblock 1000 4 10000 air
setblock 1000 4 10000 structure_block[mode=load]{metadata: "", mirror: "NONE", ignoreEntities: 1b, powered: 0b, seed: 0L, rotation: "NONE", posX: 0, posY: 0, posZ: 0, sizeX: 32, sizeY: 32, sizeZ: 32, mode: "LOAD", integrity: 1.0f, showair: 0b, name: "mini:seat"}
setblock 1000 5 10000 redstone_block

scoreboard players set $show_score mem 0
scoreboard players set $countdown_fast mem 0
scoreboard players set $survival mem 0
scoreboard players set $extra_time mem 0
scoreboard players set $new_item_cd mem 0
scoreboard players set $game_end_mode mem 0
scoreboard players reset * surviveRound

# 幻境干扰

execute store result score $random mem run random value 1..5
execute if score $random mem matches 1 run scoreboard players set $ley_line_disorder mem 1
execute if score $random mem matches 2 run scoreboard players set $ley_line_disorder mem 2
execute if score $random mem matches 3 run scoreboard players set $ley_line_disorder mem 3

# 伤害管理
scoreboard players set $remove_resistance mem 0
team modify playing friendlyFire true
team modify playing collisionRule always
team modify playing deathMessageVisibility never
gamerule naturalRegeneration true

schedule function mini:seat/game_init2 15t replace