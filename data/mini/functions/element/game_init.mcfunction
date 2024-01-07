# 初始化元素战争地图
forceload add 999 14999 1062 15062

scoreboard players reset * kills
scoreboard players reset * attack
scoreboard players reset * walk
scoreboard players reset * fall
scoreboard players reset * sneak_time
scoreboard players reset * sneak_time_temp

scoreboard players set $show_score mem 1
scoreboard players set $survival mem 0
scoreboard players set $game_end_mode mem 1

# 幻境干扰
execute store result score $random mem run random value 1..10
execute if score $random mem matches 1..5 run scoreboard players set $ley_line_disorder mem 1

# 生成地图
setblock 999 60 14999 structure_block[mode=load]{mode: "LOAD", posX: 0, posY: 1, posZ: 0, name: "mini:element000"}
setblock 999 59 14999 air
setblock 999 59 14999 redstone_block
setblock 999 60 14999 air
setblock 999 60 15031 structure_block[mode=load]{mode: "LOAD", posX: 0, posY: 1, posZ: 0, name: "mini:element001"}
setblock 999 59 15031 air
setblock 999 59 15031 redstone_block
setblock 999 60 15031 air
setblock 1031 60 14999 structure_block[mode=load]{mode: "LOAD", posX: 0, posY: 1, posZ: 0, name: "mini:element100"}
setblock 1031 59 14999 air
setblock 1031 59 14999 redstone_block
setblock 1031 60 14999 air
setblock 1031 60 15031 structure_block[mode=load]{mode: "LOAD", posX: 0, posY: 1, posZ: 0, name: "mini:element101"}
setblock 1031 59 15031 air
setblock 1031 59 15031 redstone_block
setblock 1031 60 15031 air

# 伤害管理
scoreboard players set $remove_resistance mem 0
team modify playing friendlyFire true
team modify playing collisionRule always
team modify playing deathMessageVisibility never
gamerule naturalRegeneration false
gamerule fireDamage false
schedule function mini:element/game_init2 15t replace