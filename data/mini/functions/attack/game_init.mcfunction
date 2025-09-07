# 初始化总攻地图
forceload add 967 17000 1030 17095

scoreboard players set $show_score mem 0
scoreboard players set $new_item_cd mem 0
scoreboard players set $survival mem 0
scoreboard players set $game_end_mode mem 1
scoreboard players reset * damage_dealt
scoreboard players reset * damage_dealt_back

# 生成地图
setblock 999 4 17000 structure_block{author: "00ll00", ignoreEntities: 1b, integrity: 1.0f, metadata: "", mirror: "NONE", mode: "LOAD", name: "ltw:center_00_c", posX: 0, posY: 1, posZ: 0, powered: 0b, rotation: "NONE", seed: 0L, showair: 0b, showboundingbox: 1b, sizeX: 32, sizeY: 32, sizeZ: 32}
setblock 999 3 17000 redstone_block
setblock 998 4 17000 minecraft:structure_block[mode=load]{author: "00ll00", ignoreEntities: 1b, integrity: 1.0f, metadata: "", mirror: "FRONT_BACK", mode: "LOAD", name: "ltw:center_00_c", posX: 0, posY: 1, posZ: 0, powered: 0b, rotation: "NONE", seed: 0L, showair: 0b, showboundingbox: 1b, sizeX: 32, sizeY: 32, sizeZ: 32}
setblock 998 3 17000 redstone_block
setblock 999 4 17032 minecraft:structure_block[mode=load]{author: "00ll00", ignoreEntities: 1b, integrity: 1.0f, metadata: "", mirror: "NONE", mode: "LOAD", name: "ltw:center_01_c", posX: 0, posY: 1, posZ: 0, powered: 0b, rotation: "NONE", seed: 0L, showair: 0b, showboundingbox: 1b, sizeX: 32, sizeY: 32, sizeZ: 16}
setblock 999 3 17032 redstone_block
setblock 998 4 17032 minecraft:structure_block[mode=load]{author: "00ll00", ignoreEntities: 1b, integrity: 1.0f, metadata: "", mirror: "FRONT_BACK", mode: "LOAD", name: "ltw:center_01_c", posX: 0, posY: 1, posZ: 0, powered: 0b, rotation: "NONE", seed: 0L, showair: 0b, showboundingbox: 1b, sizeX: 32, sizeY: 32, sizeZ: 16}
setblock 998 3 17032 redstone_block
setblock 999 4 17063 minecraft:structure_block[mode=load]{author: "00ll00", ignoreEntities: 1b, integrity: 1.0f, metadata: "", mirror: "LEFT_RIGHT", mode: "LOAD", name: "ltw:center_01_c", posX: 0, posY: 1, posZ: 0, powered: 0b, rotation: "NONE", seed: 0L, showair: 0b, showboundingbox: 1b, sizeX: 32, sizeY: 32, sizeZ: 16}
setblock 999 3 17063 redstone_block
setblock 998 4 17063 minecraft:structure_block[mode=load]{author: "00ll00", ignoreEntities: 1b, integrity: 1.0f, metadata: "", mirror: "NONE", mode: "LOAD", name: "ltw:center_01_c", posX: 0, posY: 1, posZ: 0, powered: 0b, rotation: "CLOCKWISE_180", seed: 0L, showair: 0b, showboundingbox: 1b, sizeX: 32, sizeY: 32, sizeZ: 16}
setblock 998 3 17063 redstone_block
setblock 999 4 17095 minecraft:structure_block[mode=load]{author: "00ll00", ignoreEntities: 1b, integrity: 1.0f, metadata: "", mirror: "LEFT_RIGHT", mode: "LOAD", name: "ltw:center_00_c", posX: 0, posY: 1, posZ: 0, powered: 0b, rotation: "NONE", seed: 0L, showair: 0b, showboundingbox: 1b, sizeX: 32, sizeY: 32, sizeZ: 32}
setblock 999 3 17095 redstone_block
setblock 998 4 17095 minecraft:structure_block[mode=load]{author: "00ll00", ignoreEntities: 1b, integrity: 1.0f, metadata: "", mirror: "NONE", mode: "LOAD", name: "ltw:center_00_c", posX: 0, posY: 1, posZ: 0, powered: 0b, rotation: "CLOCKWISE_180", seed: 0L, showair: 0b, showboundingbox: 1b, sizeX: 32, sizeY: 32, sizeZ: 32}
setblock 998 3 17095 redstone_block
fill 999 4 17095 998 3 17000 air

# 伤害管理
scoreboard players set $remove_resistance mem 0
scoreboard players set $pvp_mode mem 0
team modify playing collisionRule always
team modify playing deathMessageVisibility never
gamerule naturalRegeneration false

schedule function mini:attack/game_init2 15t replace