# 初始化炸药地图
forceload add 2000 4000 2023 4023
gamerule doTileDrops false

scoreboard players reset * potionUse
scoreboard players reset * splashPotionUse
scoreboard players reset * damage_dealt
scoreboard players reset * damageTaken
scoreboard players reset * kills_auto
scoreboard players reset * health_virt
scoreboard players set $countdown_fast mem 0
scoreboard players set $show_score mem 1
scoreboard players set $new_item_cd mem 0
scoreboard players set $survival mem 0
scoreboard players set $game_end_mode mem 0

# 生成地图
execute unless score #gamemode mem matches 2 run fill 1999 4 3999 2024 23 4024 air
execute if score #gamemode mem matches 2 run fill 1999 4 3999 2024 22 4024 bedrock
execute if score #gamemode mem matches 2 run fill 1999 23 3999 2024 23 4024 barrier
setblock 2000 4 4000 minecraft:structure_block[mode=load]{author:"?",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"mini:potion",posX:0,posY:1,posZ:0,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:1b,sizeX:24,sizeY:18,sizeZ:24}
setblock 2000 5 4000 redstone_block
setblock 2000 4 4000 bedrock

# 伤害管理（特殊伤害计算方式）
scoreboard players set $remove_resistance mem 0
scoreboard players set $pvp_mode mem 1
team modify playing collisionRule always
team modify playing deathMessageVisibility never
gamerule naturalRegeneration false
execute if score #gamemode mem matches 2 run gamerule doTileDrops true

schedule function mini:potion/game_init2 15t replace