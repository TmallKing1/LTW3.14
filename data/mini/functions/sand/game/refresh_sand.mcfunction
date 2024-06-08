setblock 2000 4 3000 minecraft:structure_block[mode=load]{author:"xiaozhu_zhizui",ignoreEntities:1b,integrity:0.1f,metadata:"",mirror:"NONE",mode:"LOAD",name:"mini:sand_rep_sand",posX:0,posY:1,posZ:0,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:1b,sizeX:34,sizeY:32,sizeZ:29}
setblock 2000 5 3000 redstone_block
setblock 2000 4 3000 air
setblock 2000 5 3000 air
setblock 2000 4 3000 minecraft:structure_block[mode=load]{author:"xiaozhu_zhizui",ignoreEntities:1b,integrity:0.1f,metadata:"",mirror:"NONE",mode:"LOAD",name:"mini:sand_rep_gravel",posX:0,posY:1,posZ:0,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:1b,sizeX:34,sizeY:32,sizeZ:29}
setblock 2000 5 3000 redstone_block
setblock 2000 5 3000 air
fill 2000 5 3000 2028 7 3028 gravel replace suspicious_gravel
setblock 2000 5 3000 redstone_block
setblock 2000 4 3000 air
setblock 2000 5 3000 air
tellraw @a ["",{"text": ">> ","color": "gold", "bold": true},{"text": "新一轮宝物已经生成！","color": "gold","bold": false}]
execute as @a[tag=!debugging] at @s run function lib:sounds/curse