# 断桥处理
execute if score $player_total_river mem matches ..4 run scoreboard players add $bridge_broken mem 2
execute if score $player_total_river mem matches 5.. run scoreboard players add $bridge_broken mem 1
fill 1006 12 15999 1006 13 15999 air
setblock 1006 13 15999 structure_block[mode=load]{metadata: "", mirror: "NONE", ignoreEntities: 1b, powered: 0b, seed: 0L, rotation: "NONE", posX: 1, posY: 0, posZ: 2, sizeX: 18, sizeY: 9, sizeZ: 30, mode: "LOAD", integrity: 1.0f, showair: 0b, name: "mini:river_air"}
execute store result block 1006 13 15999 integrity float 0.001 run scoreboard players get $bridge_broken mem
setblock 1006 12 15999 redstone_block