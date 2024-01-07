# 初始化爆裂纷争地图
forceload add 2000 1000 2032 1032

scoreboard players set $countdown_fast mem 0
scoreboard players set $show_score mem 0
scoreboard players set $new_item_cd mem 0
scoreboard players set $survival mem 0

scoreboard players set $game_end_mode mem 0

# 生成地图
setblock 2000 4 1000 minecraft:structure_block[mode=load]{mode:"LOAD",posX:0,posY:1,posZ:0,name:"mini:boomer"}
setblock 2000 5 1000 minecraft:redstone_block
setblock 2000 4 1000 air

# 幻境干扰
execute store result score $random mem run random value 1..5
execute if score $random mem matches 1 run scoreboard players set $ley_line_disorder mem 1
execute if score $random mem matches 2 run scoreboard players set $ley_line_disorder mem 2
execute if score $random mem matches 3 run scoreboard players set $ley_line_disorder mem 3

# 伤害管理
scoreboard players set $remove_resistance mem 1
team modify playing friendlyFire true
team modify playing collisionRule always
team modify playing deathMessageVisibility always
gamerule naturalRegeneration false

schedule function mini:boomer/game_init2 15t replace