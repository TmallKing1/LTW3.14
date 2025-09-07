# 游戏结束
forceload remove 1000 5000 1064 5064
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
advancement grant @a[team=playing,scores={iron_count=10..}] only ltw:blood/iron1
advancement grant @a[team=playing,scores={iron_count=20..}] only ltw:blood/iron2
advancement grant @a[team=playing,scores={iron_count=40..}] only ltw:blood/iron3
advancement grant @a[team=playing,scores={iron_count=50..}] only ltw:blood/iron4

# 计算积分
scoreboard players set @a[team=playing] mini_score 0
execute as @a[team=playing] run scoreboard players operation @s mini_score = @s iron_count

# 刷新头戴物品
execute as @a[team=playing] run function item:shop/refresh_head