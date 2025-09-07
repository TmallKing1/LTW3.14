# 初始化钻石地图
forceload add 1000 5000 1064 5064

scoreboard players reset * diamond_count
scoreboard players reset * diamond_disp
scoreboard players set $show_score mem 1
scoreboard players set $survival mem 1
scoreboard players set $game_end_mode mem 0

# 调整时间
time set 8600t

# 生成地图
setblock 1000 255 5000 minecraft:structure_block[mode=load]{metadata: "", mirror: "NONE", ignoreEntities: 1b, powered: 0b, seed: 0L, author: "LTCat", rotation: "NONE", posX: 0, mode: "LOAD", posY: -24, sizeX: 32, posZ: 0, integrity: 1.0f, showair: 0b, name: "mini:diamond_base", sizeY: 25, sizeZ: 32, showboundingbox: 1b}
setblock 1000 255 5001 redstone_block

# 幻境干扰

scoreboard players set $lld_prepare mem 0
scoreboard players set $lld_display_countdown mem 10
scoreboard players set $bossbar_display_mode mem 0

# 伤害管理
scoreboard players set $remove_resistance mem 1
scoreboard players set $pvp_mode mem 2
team modify playing collisionRule always
team modify playing deathMessageVisibility always
team modify playing nametagVisibility never
gamerule fireDamage true
gamerule drowningDamage true
gamerule naturalRegeneration false

# Gamerule 调整
gamerule doLimitedCrafting true
gamerule keepInventory true
gamerule doTileDrops true
gamerule doEntityDrops true
gamerule doMobLoot true

schedule function mini:diamond/game_init2 15t replace