# 初始化跑酷地图
forceload add 1000 1000 1064 1064

scoreboard players set $tempo_enable mem 1
scoreboard players set $show_score mem 0
execute if score #gamemode mem matches 2 run scoreboard players set $show_score mem 1
scoreboard players set $countdown_fast mem 0
scoreboard players set $survival mem 0
scoreboard players set $game_end_mode mem 1

# 生成地图
setblock 1000 4 1000 minecraft:structure_block[mode=load]{metadata: "", mirror: "NONE", ignoreEntities: 1b, powered: 0b, seed: 0L, author: "00ll00", rotation: "NONE", posX: 0, mode: "LOAD", posY: 1, sizeX: 32, posZ: 0, integrity: 1.0f, showair: 0b, name: "mini:parkour0", sizeY: 32, sizeZ: 32, showboundingbox: 0b}
setblock 1000 5 1000 minecraft:redstone_block
setblock 1000 4 1032 minecraft:structure_block[mode=load]{metadata: "", mirror: "NONE", ignoreEntities: 1b, powered: 0b, seed: 0L, author: "00ll00", rotation: "NONE", posX: 0, mode: "LOAD", posY: 1, sizeX: 32, posZ: 0, integrity: 1.0f, showair: 0b, name: "mini:parkour1", sizeY: 32, sizeZ: 32, showboundingbox: 0b}
setblock 1000 5 1032 minecraft:redstone_block
setblock 1000 4 1000 air
setblock 1000 4 1032 air

# 幻境干扰
execute store result score $random mem run random value 1..2
execute if score $random mem matches 1 run scoreboard players set $ley_line_disorder mem 1

# 伤害管理
scoreboard players set $remove_resistance mem 0
execute unless score $ley_line_disorder mem matches 1 run scoreboard players set $pvp_mode mem 0
execute if score $ley_line_disorder mem matches 1 run scoreboard players set $pvp_mode mem 2
execute if score #gamemode mem matches -2 run scoreboard players set $pvp_mode mem 0
team modify playing collisionRule never
team modify playing deathMessageVisibility never
gamerule naturalRegeneration true

schedule function mini:parkour/game_init2 15t replace