# 初始化鸭子快跑地图
forceload add 1000 14000 1027 14027

# 初始化
scoreboard players set $show_score mem 0
scoreboard players set $survival mem 0
scoreboard players set $new_item_cd mem 0
scoreboard players set $game_end_mode mem 1
scoreboard players reset * surviveRound

# 伤害管理
scoreboard players set $remove_resistance mem 0
team modify playing friendlyFire false
team modify playing collisionRule always
team modify playing deathMessageVisibility never

# 生成地图
setblock 1000 4 14000 air
setblock 1000 4 14000 minecraft:structure_block[mode=load]{metadata: "", mirror: "NONE", ignoreEntities: 1b, powered: 0b, seed: 0L, rotation: "NONE", posX: 0, mode: "LOAD", posY: 1, sizeX: 28, posZ: 0, integrity: 1.0f, showair: 0b, name: "mini:duckrush", sizeY: 8, sizeZ: 28, showboundingbox: 0b}
setblock 1000 5 14000 minecraft:redstone_block
setblock 1001 4 14001 air
setblock 1001 4 14001 minecraft:structure_block[mode=load]{metadata: "", mirror: "NONE", ignoreEntities: 1b, powered: 0b, seed: 0L, rotation: "NONE", posX: 0, mode: "LOAD", posY: 1, sizeX: 26, posZ: 0, integrity: 0.5f, showair: 0b, name: "mini:duckrush_stone", sizeY: 1, sizeZ: 26, showboundingbox: 0b}
setblock 1001 3 14001 minecraft:redstone_block
setblock 1001 4 14001 air
setblock 1001 3 14001 air
fill 1001 6 14001 1026 6 14026 structure_void

schedule function mini:duckrush/game_init2 15t replace