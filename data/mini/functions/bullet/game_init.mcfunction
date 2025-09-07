# 初始化子弹地图
forceload add 999 17999 1019 18019

scoreboard players reset * kill_villager

scoreboard players set $show_score mem 1
scoreboard players set $new_item_cd mem 0
scoreboard players set $survival mem 0
scoreboard players set $game_end_mode mem 1
scoreboard players set $levitation mem 0
scoreboard players set $ villager_id 0

# 调整时间
time set 21200t

# 生成地图
setblock 1000 4 18000 minecraft:structure_block[mode=load]{author:"xiaozhu_zhizui",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"mini:bullet0",posX:0,posY:1,posZ:0,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:0b,sizeX:20,sizeY:32,sizeZ:20}
setblock 1000 5 18000 minecraft:redstone_block
setblock 999 37 17999 minecraft:structure_block[mode=load]{author:"xiaozhu_zhizui",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"mini:bullet1",posX:1,posY:0,posZ:1,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:0b,sizeX:20,sizeY:32,sizeZ:20}
setblock 999 38 17999 minecraft:redstone_block
fill 999 37 17999 999 38 17999 air

# 幻境干扰
execute store result score $random mem run random value 1..5
execute if score $random mem matches 1 run scoreboard players set $ley_line_disorder mem 1
execute if score $random mem matches 2 run scoreboard players set $ley_line_disorder mem 2
execute if score $random mem matches 3 run scoreboard players set $ley_line_disorder mem 3

# 伤害管理
scoreboard players set $remove_resistance mem 0
scoreboard players set $pvp_mode mem 2
execute if score #gamemode mem matches 2 run scoreboard players set $pvp_mode mem 0
team modify playing collisionRule always
team modify playing deathMessageVisibility never
schedule function mini:bullet/game_init2 1t replace

# 游戏规则调整
gamerule doMobLoot false