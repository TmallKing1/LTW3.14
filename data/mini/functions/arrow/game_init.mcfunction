# 初始化掘一死箭地图
forceload add 1000 13000 1031 13031

scoreboard players reset * layer
scoreboard players reset * crit_arrow_shot

scoreboard players set $show_score mem 0
scoreboard players set $survival mem 0
scoreboard players set $game_end_mode mem 0

# 生成地图
setblock 1000 4 13000 structure_block[mode=load]{mode: "LOAD", posX: 0, posY: 1, posZ: 0, name: "mini:arrow"}
setblock 1000 5 13000 redstone_block
# 逆转模式下的额外生成
execute if score #gamemode mem matches 2 run clone 1000 36 13000 1031 36 13031 1000 37 13000 filtered light_gray_stained_glass
execute if score #gamemode mem matches 2 run fill 1000 37 13000 1031 37 13031 barrier replace light_gray_stained_glass
execute if score #gamemode mem matches 2 run fill 1000 5 13000 1031 37 13031 bedrock replace #mini:arrow_wall

# 幻境干扰
execute store result score $random mem run random value 1..5
execute if score $random mem matches 1 run scoreboard players set $ley_line_disorder mem 1
execute if score $random mem matches 2 run scoreboard players set $ley_line_disorder mem 2
execute if score $random mem matches 3 run scoreboard players set $ley_line_disorder mem 3

# 伤害管理
scoreboard players set $remove_resistance mem 0
scoreboard players set $pvp_mode mem 0
execute if score $ley_line_disorder mem matches 3 run scoreboard players set $pvp_mode mem 2
team modify playing collisionRule always
team modify playing deathMessageVisibility never
gamerule naturalRegeneration true
execute if score #gamemode mem matches 2 run gamerule doTileDrops true

kill @e[type=tnt]

schedule function mini:arrow/game_init2 1t replace