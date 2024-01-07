# 初始化僵尸地图
forceload add 2000 12000 2023 12023

# 生成地图
setblock 2000 -5 12000 structure_block[mode=load]{metadata: "", mirror: "NONE", ignoreEntities: 1b, powered: 0b, seed: 0L, rotation: "NONE", posX: 0, posY: 1, posZ: 0, sizeX: 25, sizeY: 19, sizeZ: 30, mode: "LOAD", integrity: 1.0f, showair: 0b, name: "mini:zombie2"}
setblock 2000 -4 12000 redstone_block
fill 2000 -4 12000 2000 -5 12000 air