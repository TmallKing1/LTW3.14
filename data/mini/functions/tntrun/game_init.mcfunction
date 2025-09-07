# 初始化 TNT Run 地图
forceload add 1000 2000 1050 2050

scoreboard players reset * layer

scoreboard players set $show_score mem 0
scoreboard players set $survival mem 0
scoreboard players set $game_end_mode mem 0

# 生成地图
##000
setblock 1000 9 2000 minecraft:structure_block[mode=load]{metadata: "", mirror: "NONE", ignoreEntities: 1b, powered: 0b, seed: 0L, author: "chengzi_SC", rotation: "NONE", posX: 0, mode: "LOAD", posY: 1, sizeX: 32, posZ: 0, integrity: 1.0f, showair: 0b, name: "mini:tntrun000", sizeY: 32, sizeZ: 32, showboundingbox: 0b}
setblock 1000 10 2000 minecraft:redstone_block
##001
setblock 1000 9 2032 minecraft:structure_block[mode=load]{metadata: "", mirror: "NONE", ignoreEntities: 1b, powered: 0b, seed: 0L, author: "chengzi_SC", rotation: "NONE", posX: 0, mode: "LOAD", posY: 1, sizeX: 32, posZ: 0, integrity: 1.0f, showair: 0b, name: "mini:tntrun001", sizeY: 32, sizeZ: 8, showboundingbox: 0b}
setblock 1000 10 2032 minecraft:redstone_block
##100
setblock 1032 9 2000 minecraft:structure_block[mode=load]{metadata: "", mirror: "NONE", ignoreEntities: 1b, powered: 0b, seed: 0L, author: "chengzi_SC", rotation: "NONE", posX: 0, mode: "LOAD", posY: 1, sizeX: 9, posZ: 0, integrity: 1.0f, showair: 0b, name: "mini:tntrun100", sizeY: 32, sizeZ: 32, showboundingbox: 0b}
setblock 1032 10 2000 minecraft:redstone_block
##101
setblock 1032 9 2032 minecraft:structure_block[mode=load]{metadata: "", mirror: "NONE", ignoreEntities: 1b, powered: 0b, seed: 0L, author: "chengzi_SC", rotation: "NONE", posX: 0, mode: "LOAD", posY: 1, sizeX: 9, posZ: 0, integrity: 1.0f, showair: 0b, name: "mini:tntrun101", sizeY: 32, sizeZ: 8, showboundingbox: 0b}
setblock 1032 10 2032 minecraft:redstone_block
##010
setblock 1000 52 2000 minecraft:structure_block[mode=load]{metadata: "", mirror: "NONE", ignoreEntities: 1b, powered: 0b, seed: 0L, author: "chengzi_SC", rotation: "NONE", posX: 0, mode: "LOAD", posY: -10, sizeX: 32, posZ: 0, integrity: 1.0f, showair: 0b, name: "mini:tntrun010", sizeY: 10, sizeZ: 32, showboundingbox: 0b}
setblock 1000 51 2000 minecraft:redstone_block
##011
setblock 1000 52 2032 minecraft:structure_block[mode=load]{metadata: "", mirror: "NONE", ignoreEntities: 1b, powered: 0b, seed: 0L, author: "chengzi_SC", rotation: "NONE", posX: 0, mode: "LOAD", posY: -10, sizeX: 32, posZ: 0, integrity: 1.0f, showair: 0b, name: "mini:tntrun011", sizeY: 10, sizeZ: 8, showboundingbox: 0b}
setblock 1000 51 2032 minecraft:redstone_block
##110
setblock 1032 52 2000 minecraft:structure_block[mode=load]{metadata: "", mirror: "NONE", ignoreEntities: 1b, powered: 0b, seed: 0L, author: "chengzi_SC", rotation: "NONE", posX: 0, mode: "LOAD", posY: -10, sizeX: 9, posZ: 0, integrity: 1.0f, showair: 0b, name: "mini:tntrun110", sizeY: 10, sizeZ: 32, showboundingbox: 0b}
setblock 1032 51 2000 minecraft:redstone_block
##111
setblock 1032 52 2032 minecraft:structure_block[mode=load]{metadata: "", mirror: "NONE", ignoreEntities: 1b, powered: 0b, seed: 0L, author: "chengzi_SC", rotation: "NONE", posX: 0, mode: "LOAD", posY: -10, sizeX: 9, posZ: 0, integrity: 1.0f, showair: 0b, name: "mini:tntrun111", sizeY: 10, sizeZ: 8, showboundingbox: 0b}
setblock 1032 51 2032 minecraft:redstone_block

# 逆转模式下，去除钻石块
execute if score #gamemode mem matches 2 run setblock 1013 23 2026 dead_horn_coral_block
execute if score #gamemode mem matches 2 run setblock 1024 23 2030 dead_horn_coral_block
execute if score #gamemode mem matches 2 run setblock 1029 23 2025 dead_horn_coral_block
execute if score #gamemode mem matches 2 run setblock 1025 23 2014 dead_horn_coral_block
execute if score #gamemode mem matches 2 run setblock 1014 23 2010 dead_horn_coral_block
execute if score #gamemode mem matches 2 run setblock 1009 23 2015 dead_horn_coral_block
execute if score #gamemode mem matches 2 run setblock 1013 28 2020 dead_horn_coral_block
execute if score #gamemode mem matches 2 run setblock 1019 28 2026 dead_horn_coral_block
execute if score #gamemode mem matches 2 run setblock 1025 28 2020 dead_horn_coral_block
execute if score #gamemode mem matches 2 run setblock 1019 28 2014 dead_horn_coral_block
execute if score #gamemode mem matches 2 run setblock 1019 28 2020 dead_horn_coral_block

# 幻境干扰

execute store result score $random mem run random value 1..4
execute if score $random mem matches 1 run scoreboard players set $ley_line_disorder mem 1
execute if score $random mem matches 2 run scoreboard players set $ley_line_disorder mem 2

# 伤害管理
scoreboard players set $remove_resistance mem 0
scoreboard players set $pvp_mode mem 2
team modify playing collisionRule always
team modify playing deathMessageVisibility never
gamerule naturalRegeneration true

schedule function mini:tntrun/game_init2 15t replace