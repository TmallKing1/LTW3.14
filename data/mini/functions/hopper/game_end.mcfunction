# 游戏结束
forceload remove 0 5000 -33 4967
worldborder set 1000000

# Gamerule 调整
gamerule doDaylightCycle false
gamerule doLimitedCrafting true
gamerule keepInventory true
gamerule doTileDrops false
gamerule doEntityDrops false
gamerule doMobLoot false
gamerule fireDamage false
gamerule drowningDamage false

# 给予进度
advancement grant @a[team=playing,scores={cash=19800..}] only ltw:blood/hopper1
advancement grant @a[team=playing,scores={cash=32800..}] only ltw:blood/hopper2
advancement grant @a[team=playing,scores={cash=64800..}] only ltw:blood/hopper3
advancement grant @a[team=playing,scores={cash=114514..}] only ltw:blood/hopper4

# 清除相关 Tag
tag @a remove ready_tp

# 计算积分
scoreboard players set @a[team=playing] mini_score 0
execute as @a[team=playing] run scoreboard players operation @s mini_score = @s cash

# 清理物品栏
clear @a[team=playing]

# 刷新头戴物品
execute as @a[team=playing] run function item:shop/refresh_head