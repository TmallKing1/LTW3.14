# 初始化会心一击地图
forceload add 1000 19000 1063 19063

scoreboard players reset * kills
scoreboard players reset * kill_streak

scoreboard players set $show_score mem 1
scoreboard players set $new_item_cd mem 0
scoreboard players set $survival mem 0
scoreboard players set $game_end_mode mem 1

# 生成地图
setblock 1000 -64 19000 structure_block{author: "00ll00", ignoreEntities: 1b, integrity: 1.0f, metadata: "", mirror: "NONE", mode: "LOAD", name: "mini:power_00", posX: 0, posY: 1, posZ: 0, powered: 0b, rotation: "NONE", seed: 0L, showair: 0b, showboundingbox: 1b, sizeX: 32, sizeY: 32, sizeZ: 32}
setblock 1000 -63 19000 redstone_block
setblock 1000 -64 19032 structure_block{author: "00ll00", ignoreEntities: 1b, integrity: 1.0f, metadata: "", mirror: "NONE", mode: "LOAD", name: "mini:power_01", posX: 0, posY: 1, posZ: 0, powered: 0b, rotation: "NONE", seed: 0L, showair: 0b, showboundingbox: 1b, sizeX: 32, sizeY: 32, sizeZ: 32}
setblock 1000 -63 19032 redstone_block
setblock 1032 -64 19000 structure_block{author: "00ll00", ignoreEntities: 1b, integrity: 1.0f, metadata: "", mirror: "NONE", mode: "LOAD", name: "mini:power_10", posX: 0, posY: 1, posZ: 0, powered: 0b, rotation: "NONE", seed: 0L, showair: 0b, showboundingbox: 1b, sizeX: 32, sizeY: 32, sizeZ: 32}
setblock 1032 -63 19000 redstone_block
setblock 1032 -64 19032 structure_block{author: "00ll00", ignoreEntities: 1b, integrity: 1.0f, metadata: "", mirror: "NONE", mode: "LOAD", name: "mini:power_11", posX: 0, posY: 1, posZ: 0, powered: 0b, rotation: "NONE", seed: 0L, showair: 0b, showboundingbox: 1b, sizeX: 32, sizeY: 32, sizeZ: 32}
setblock 1032 -63 19032 redstone_block
fill 1000 -64 19000 1032 -64 19032 air

# 伤害管理
scoreboard players set $remove_resistance mem 0
scoreboard players set $pvp_mode mem 2
team modify playing collisionRule always
team modify playing deathMessageVisibility never
gamerule naturalRegeneration false

schedule function mini:power/game_init2 15t replace