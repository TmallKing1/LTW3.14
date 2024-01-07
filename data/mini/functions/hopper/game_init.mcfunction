# 初始化富翁地图
forceload add 0 5000 -33 4967

scoreboard players reset * cash
scoreboard players set $show_score mem 1
scoreboard players set $survival mem 1
scoreboard players set $game_end_mode mem 0

# 调整时间
time set 8600t

# 幻境干扰

scoreboard players set $lld_prepare mem 0
scoreboard players set $lld_display_countdown mem 10
scoreboard players set $bossbar_display_mode mem 0

# 伤害管理
scoreboard players set $remove_resistance mem 1
team modify playing friendlyFire true
team modify playing collisionRule always
team modify playing deathMessageVisibility always
team modify playing nametagVisibility never
gamerule fireDamage true
gamerule drowningDamage true

# Gamerule 调整
gamerule doLimitedCrafting false
gamerule keepInventory true
gamerule doTileDrops true
gamerule doEntityDrops true
gamerule doMobLoot true

schedule function mini:hopper/game_init2 5t replace