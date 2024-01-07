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

# 计分
execute as @a[tag=!bingo_finished,team=playing] run scoreboard players operation @s mini_score = @s quest_complete

# 给予进度
#advancement grant @a[team=playing,scores={diamond_count=7..}] only ltw:blood/diamond1
#advancement grant @a[team=playing,scores={diamond_count=12..}] only ltw:blood/diamond2
#advancement grant @a[team=playing,scores={diamond_count=18..}] only ltw:blood/diamond3
#advancement grant @a[team=playing,scores={diamond_count=30..}] only ltw:blood/diamond4

# 清理物品栏
clear @a[team=playing]

# 刷新头戴物品
execute as @a[team=playing] run function item:shop/refresh_head