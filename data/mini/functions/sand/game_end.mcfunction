# 结束砸罐子
forceload remove 2000 3000 2033 3028

# Gamerule 调整
gamerule doTileDrops false
gamerule drowningDamage false

# 清理残余实体
tp @e[tag=sand_entity] 2000 -100 2000
kill @e[tag=sand_entity]

# 计算积分
scoreboard players set @a[team=playing] mini_score 0
execute unless score $ley_line_disorder mem matches -1 as @a[team=playing] run scoreboard players operation @s mini_score = @s gold_ingame
execute if score $ley_line_disorder mem matches -1 as @a[team=playing] run scoreboard players operation @s mini_score = @s gold_inhand

# 属性
attribute @s generic.attack_speed modifier remove dd1beb7d-dab5-4449-9c70-9fe03f406c75

# 给予进度
execute unless score #gamemode mem matches 2 run advancement grant @a[team=playing,scores={gold_ingame=25..}] only ltw:parkour/sand1
execute unless score #gamemode mem matches 2 run advancement grant @a[team=playing,scores={gold_ingame=95..}] only ltw:parkour/sand3
execute unless score #gamemode mem matches 2 run advancement grant @a[team=playing,tag=!effect_bought,scores={gold_ingame=140..}] only ltw:parkour/sand4