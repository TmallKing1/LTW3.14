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

# 幻境干扰
execute store result score $random mem run random value 1..5
execute if score $random mem matches 1 run scoreboard players set $ley_line_disorder mem 1
execute if score $random mem matches 2 run scoreboard players set $ley_line_disorder mem 2
execute if score $random mem matches 3 run scoreboard players set $ley_line_disorder mem 3

# 伤害管理
scoreboard players set $remove_resistance mem 0
team modify playing friendlyFire false
execute if score $ley_line_disorder mem matches 3 run team modify playing friendlyFire true
team modify playing collisionRule always
team modify playing deathMessageVisibility never
kill @e[type=tnt]
schedule function mini:arrow/game_init2 1t replace