# 初始化运输地图
forceload add 1000 15999 1031 16031
setblock 1000 4 16000 structure_block[mode=load]{metadata: "", mirror: "NONE", ignoreEntities: 1b, powered: 0b, seed: 0L, rotation: "NONE", posX: 0, posY: 1, posZ: 0, sizeX: 32, sizeY: 32, sizeZ: 32, mode: "LOAD", integrity: 1.0f, showair: 0b, name: "mini:river"}
setblock 1000 5 16000 redstone_block

scoreboard players set $show_score mem 1
scoreboard players set $new_item_cd mem 0
scoreboard players set $survival mem 0
scoreboard players set $countdown_fast mem 0
scoreboard players set $bridge_broken mem 0
scoreboard players set $timer_max mem 60
execute if score #gamemode mem matches 2 run scoreboard players set $timer_max mem 150
scoreboard players set $game_end_mode mem 1
scoreboard players set $speci_hinted mem 1

scoreboard players reset * tran_mats
scoreboard players reset * tran_mats_ex

# 幻境干扰

execute store result score $random mem run random value 1..5
execute if score $random mem matches 1 run scoreboard players set $ley_line_disorder mem 1
execute if score $random mem matches 2 run scoreboard players set $ley_line_disorder mem 2
execute if score $random mem matches 3 run scoreboard players set $ley_line_disorder mem 3

# 玩家总数
execute store result score $player_total_river mem if entity @a[team=playing]

# 初始化
scoreboard players set $remove_resistance mem 0
scoreboard players set $pvp_mode mem 2
team modify playing collisionRule always
team modify playing deathMessageVisibility never
gamerule naturalRegeneration true

schedule function mini:river/game_init2 5t replace