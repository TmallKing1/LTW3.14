# 初始化幻翼地图
forceload add 1000 6000 1064 6064

scoreboard players set $show_score mem 1
scoreboard players set $survival mem 0
scoreboard players set $new_item_cd mem 0
scoreboard players set $game_end_mode mem 1
scoreboard players reset * kill_phantom
scoreboard players reset * kill_phantom2

# 幻境干扰
execute store result score $random mem run random value 1..10
execute if score $random mem matches 1..3 run scoreboard players set $ley_line_disorder mem 1
execute if score $random mem matches 4..6 run scoreboard players set $ley_line_disorder mem 2

# 调整时间
time set 21200t

# 生成地图
setblock 1000 4 6000 minecraft:structure_block[mode=load]{metadata: "", mirror: "NONE", ignoreEntities: 1b, powered: 0b, seed: 0L, author: "LTCat", rotation: "NONE", posX: 0, mode: "LOAD", posY: 1, sizeX: 32, posZ: 0, integrity: 1.0f, showair: 0b, name: "mini:hy00", sizeY: 32, sizeZ: 32, showboundingbox: 0b}
setblock 1000 5 6000 redstone_block
setblock 1000 4 6032 minecraft:structure_block[mode=load]{metadata: "", mirror: "NONE", ignoreEntities: 1b, powered: 0b, seed: 0L, author: "LTCat", rotation: "NONE", posX: 0, mode: "LOAD", posY: 1, sizeX: 32, posZ: 0, integrity: 1.0f, showair: 0b, name: "mini:hy01", sizeY: 32, sizeZ: 32, showboundingbox: 0b}
setblock 1000 5 6032 redstone_block
setblock 1032 4 6000 minecraft:structure_block[mode=load]{metadata: "", mirror: "NONE", ignoreEntities: 1b, powered: 0b, seed: 0L, author: "LTCat", rotation: "NONE", posX: 0, mode: "LOAD", posY: 1, sizeX: 32, posZ: 0, integrity: 1.0f, showair: 0b, name: "mini:hy10", sizeY: 32, sizeZ: 32, showboundingbox: 0b}
setblock 1032 5 6000 redstone_block
setblock 1032 4 6032 minecraft:structure_block[mode=load]{metadata: "", mirror: "NONE", ignoreEntities: 1b, powered: 0b, seed: 0L, author: "LTCat", rotation: "NONE", posX: 0, mode: "LOAD", posY: 1, sizeX: 32, posZ: 0, integrity: 1.0f, showair: 0b, name: "mini:hy11", sizeY: 32, sizeZ: 32, showboundingbox: 0b}
setblock 1032 5 6032 redstone_block
setblock 1000 4 6000 air
setblock 1000 4 6032 air
setblock 1032 4 6000 air
setblock 1032 4 6032 air

# 绿宝石块
execute if score $ley_line_disorder mem matches 2 run fill 1032 16 6007 1033 16 6006 minecraft:emerald_block
execute if score $ley_line_disorder mem matches 2 run fill 1030 16 6054 1031 16 6053 minecraft:emerald_block

# 伤害管理
scoreboard players set $remove_resistance mem 1
team modify playing friendlyFire false
team modify playing collisionRule always
team modify playing deathMessageVisibility always

# gamerule 调整
gamerule doMobLoot true

schedule function mini:phantom/game_init2 15t replace