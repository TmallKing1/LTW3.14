# 初始化挖宝地图
forceload add 2000 3000 2033 3028

scoreboard players reset * gold_ingame
scoreboard players reset * gold_inhand
scoreboard players reset * kills_auto
scoreboard players reset * chest_open
scoreboard players set $show_score mem 1
scoreboard players set $countdown_fast mem 0
scoreboard players set $survival mem 0
scoreboard players set $game_end_mode mem 1

# 生成地图
setblock 2000 4 3000 minecraft:structure_block[mode=load]{author:"xiaozhu_zhizui",ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"mini:sand",posX:0,posY:1,posZ:0,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:1b,sizeX:34,sizeY:32,sizeZ:29}
setblock 2000 5 3000 redstone_block
setblock 2000 4 3000 air
setblock 2030 22 3013 minecraft:oak_wall_sign[facing=west,waterlogged=false]{back_text:{color:"black",has_glowing_text:0b,messages:['""','""','""','""']},front_text:{color:"orange",has_glowing_text:1b,messages:['"[ 购买 ]"','"水下呼吸 15s"','{"clickEvent":{"action":"run_command","value":"/function mini:sand/game/buy_effect"},"text":""}','"10 G"']},is_waxed:1b}
setblock 2030 22 3015 minecraft:oak_wall_sign[facing=west,waterlogged=false]{back_text:{color:"black",has_glowing_text:0b,messages:['""','""','""','""']},front_text:{color:"orange",has_glowing_text:1b,messages:['"[ 购买 ]"','"破损金剑(仅本轮)"','{"clickEvent":{"action":"run_command","value":"/function mini:sand/game/buy_sword"},"text":""}','"15 G"']},is_waxed:1b}

# 调整时间
time set 8600t

# 幻境干扰
execute store result score $random mem run random value 1..5
execute if score $random mem matches 1 run scoreboard players set $ley_line_disorder mem 1
execute if score $random mem matches 2 run scoreboard players set $ley_line_disorder mem 2
execute if score $random mem matches 3 run scoreboard players set $ley_line_disorder mem 3

# 伤害管理
scoreboard players set $remove_resistance mem 0
team modify playing friendlyFire true
team modify playing collisionRule always
team modify playing deathMessageVisibility always
gamerule drowningDamage true
gamerule naturalRegeneration false

schedule function mini:sand/game_init2 15t replace