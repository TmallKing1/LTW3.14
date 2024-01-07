
# 清理残余实体
tp @e[type=!player,x=950,y=-200,z=4950,dx=100,dy=600,dz=100] ~ -100 ~
kill @e[type=!player,x=950,y=-200,z=4950,dx=100,dy=600,dz=100]
kill @e[tag=bingo_entity]

# 确定任务
function mini:bingo/game/init_goal

# 生成实体
execute as @a[team=playing] run function mini:bingo/game/hmc_init
team join playing @e[type=chest_minecart,tag=player_minecart]
summon marker 0 3 0 {CustomName:'{"text": "无","color": "red"}',Tags:["quest_complete_1","bingo_entity"]}
summon marker 0 3 0 {CustomName:'{"text": "无","color": "red"}',Tags:["quest_complete_2","bingo_entity"]}
summon marker 0 3 0 {CustomName:'{"text": "无","color": "red"}',Tags:["quest_complete_3","bingo_entity"]}
summon marker 0 3 0 {CustomName:'{"text": "无","color": "red"}',Tags:["quest_complete_4","bingo_entity"]}
summon marker 0 3 0 {CustomName:'{"text": "无","color": "red"}',Tags:["quest_complete_5","bingo_entity"]}
summon marker 0 3 0 {CustomName:'{"text": "无","color": "red"}',Tags:["quest_complete_6","bingo_entity"]}
summon marker 0 3 0 {CustomName:'{"text": "无","color": "red"}',Tags:["quest_complete_7","bingo_entity"]}
summon marker 0 3 0 {CustomName:'{"text": "无","color": "red"}',Tags:["quest_complete_8","bingo_entity"]}
summon marker 0 3 0 {CustomName:'{"text": "无","color": "red"}',Tags:["quest_complete_9","bingo_entity"]}

# 矿物生成
setblock 1028 251 5030 minecraft:structure_block[mode=load]{author:"xiaozhu_zhizui",ignoreEntities:1b,integrity:0.03f,metadata:"",mirror:"NONE",mode:"LOAD",name:"mini:diamond_redstone",posX:-28,posY:-19,posZ:-30,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:1b,sizeX:32,sizeY:4,sizeZ:32}
setblock 1028 252 5030 minecraft:redstone_block

schedule function mini:bingo/game_init3 7t