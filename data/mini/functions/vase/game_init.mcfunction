# 初始化跑酷地图
forceload add 2000 2000 2063 2023

scoreboard players reset * vase_broken
scoreboard players reset * attack_count
scoreboard players set $show_score mem 1
scoreboard players set $countdown_fast mem 0
scoreboard players set $survival mem 0
scoreboard players set $game_end_mode mem 1

# 生成地图
setblock 2000 4 2000 minecraft:structure_block[mode=load]{metadata: "", mirror: "NONE", ignoreEntities: 1b, powered: 0b, seed: 0L, author: "xiaozhu_zhizui", rotation: "NONE", posX: 0, mode: "LOAD", posY: 1, sizeX: 32, posZ: 0, integrity: 1.0f, showair: 0b, name: "mini:vase_0", sizeY: 13, sizeZ: 24, showboundingbox: 0b}
setblock 2000 5 2000 minecraft:redstone_block
setblock 2032 4 2000 minecraft:structure_block[mode=load]{metadata: "", mirror: "NONE", ignoreEntities: 1b, powered: 0b, seed: 0L, author: "xiaozhu_zhizui", rotation: "NONE", posX: 0, mode: "LOAD", posY: 1, sizeX: 32, posZ: 0, integrity: 1.0f, showair: 0b, name: "mini:vase_1", sizeY: 13, sizeZ: 24, showboundingbox: 0b}
setblock 2032 5 2000 minecraft:redstone_block
setblock 2000 4 2000 air
setblock 2032 4 2000 air

# 调整时间
time set 21200t

# 幻境干扰
#execute store result score $random mem run random value 1..10
#execute if score $random mem matches 1..5 run scoreboard players set $ley_line_disorder mem 1

# 伤害管理
scoreboard players set $remove_resistance mem 0
team modify playing friendlyFire false
team modify playing collisionRule always
team modify playing deathMessageVisibility never

# Gamerule 调整
gamerule doTileDrops true

schedule function mini:vase/game_init2 15t replace