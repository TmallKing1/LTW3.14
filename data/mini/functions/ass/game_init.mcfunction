# 初始化刺客地图
forceload add 1000 7000 1032 7032

scoreboard players reset * creeperUsed
scoreboard players reset * deaths
scoreboard players set $countdown_fast mem 0
scoreboard players set $show_score mem 0
scoreboard players set $new_item_cd mem 0
scoreboard players set $survival mem 0
scoreboard players set $game_end_mode mem 0

# 幻境干扰
execute store result score $random mem run random value 1..8
execute if score $random mem matches 1 run scoreboard players set $ley_line_disorder mem 1
execute if score $random mem matches 2 run scoreboard players set $ley_line_disorder mem 2
execute if score $random mem matches 3 run scoreboard players set $ley_line_disorder mem 3
execute if score $random mem matches 4 run scoreboard players set $ley_line_disorder mem 4
execute if score $random mem matches 5 run scoreboard players set $ley_line_disorder mem 5

# 生成地图
execute unless score #gamemode mem matches 2 run fill 999 4 6999 1032 37 7032 air
execute if score #gamemode mem matches 2 run fill 999 4 6999 1032 37 7032 bedrock
setblock 1000 4 7000 minecraft:structure_block[mode=load]{mode: "LOAD", posX: 0, posY: 1, posZ: 0, name: "mini:ass"}
setblock 1000 5 7000 minecraft:redstone_block
setblock 1000 4 7000 bedrock
execute if score #gamemode mem matches 2 run fill 999 4 6999 1032 37 7032 air replace barrier

# 伤害管理
scoreboard players set $remove_resistance mem 1
scoreboard players set $pvp_mode mem 2
team modify playing collisionRule always
team modify playing deathMessageVisibility always
gamerule naturalRegeneration false
execute if score #gamemode mem matches 2 run gamerule doTileDrops true
execute if score #gamemode mem matches 2 run gamerule mobGriefing true

schedule function mini:ass/game_init2 15t replace