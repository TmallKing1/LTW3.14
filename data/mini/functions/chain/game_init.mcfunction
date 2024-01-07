# 初始化连锁爆破地图
forceload add 967 17000 1030 17095

scoreboard players set $show_score mem 0
scoreboard players set $new_item_cd mem 0
scoreboard players set $survival mem 0
scoreboard players set $game_end_mode mem 0

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

# 幻境干扰

execute store result score $random mem run random value 1..5
execute if score $random mem matches 1 run scoreboard players set $ley_line_disorder mem 1
execute if score $random mem matches 2 run scoreboard players set $ley_line_disorder mem 2

# 伤害管理
scoreboard players set $remove_resistance mem 0
team modify playing friendlyFire true
team modify playing collisionRule always
team modify playing deathMessageVisibility never
schedule function mini:chain/game_init2 15t replace