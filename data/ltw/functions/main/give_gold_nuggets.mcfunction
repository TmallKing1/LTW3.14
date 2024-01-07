# 如果因为掉线强制结束则无第一名奖励
execute store result score #count mem if entity @a[team=playing]
execute if score #count mem matches ..2 run tag @a remove total_rank1
# 获胜（第一名）金粒奖励
execute as @a[tag=total_rank1] run tellraw @s [" 你因获得第一名拿到了额外的 ",{"text": "6 金粒","color": "gold"}," 奖励，继续加油吧！"]
execute as @a[tag=total_rank1] run scoreboard players add @s gold 6
execute as @a[tag=total_rank1] run scoreboard players add @s gold_total 6

# 计算应获得的金粒
execute as @a[team=playing] run scoreboard players operation @s temp = @s total_score
execute as @a[team=playing] run scoreboard players operation @s temp *= #2 mem
#execute unless score $force_end mem matches 1 as @a[team=playing,tag=double_reward] run scoreboard players operation @s temp *= #2 mem
execute as @a[team=playing] run scoreboard players operation @s temp /= #3 mem

# 积分金粒奖励
execute as @a[team=playing] run scoreboard players operation @s gold += @s temp
execute as @a[team=playing] run scoreboard players operation @s gold_total += @s temp
execute as @a[team=playing] run scoreboard players operation @s temp2 = @s total_score
#execute unless score $force_end mem matches 1 as @a[team=playing,tag=double_reward] run scoreboard players operation @s temp2 *= #2 mem
execute as @a[team=playing] run scoreboard players operation @s primogem += @s temp2

tellraw @a[team=playing,scores={temp=1..}] [" 你得到的 ",{"score":{"name": "*","objective": "total_score"},"color":"gold"},{"text": " 积分","color":"gold"}," 已转换为 ",{"score":{"name": "*","objective": "temp"},"color":"gold"},{"text": " 金粒","color":"gold"}," 与 ",{"score":{"name": "*","objective": "temp2"},"color":"light_purple"},{"text": " 魔法精华","color":"light_purple"},"！"]

tellraw @a[team=playing,scores={temp=0,total_score=1..}] [" 你得到的 ",{"score":{"name": "*","objective": "total_score"},"color":"gold"},{"text": " 积分","color":"gold"}," 已转换为 ",{"score":{"name": "*","objective": "temp2"},"color":"light_purple"},{"text": " 魔法精华","color":"light_purple"},"！"]

# 局中金粒
tellraw @a[team=playing,scores={gold_extra=1..}] [" 在游戏过程中，你拿到了额外的 ",{"score":{"name": "*","objective": "gold_extra"},"color":"gold"},{"text": " 金粒","color":"gold"},"！"]

# 局中绿宝石
tellraw @a[team=playing,scores={green_extra=1..}] [" 由于达成了进度，你得到了 ",{"score":{"name": "*","objective": "green_extra"},"color":"green"},{"text": " 绿宝石","color":"green"}," 完成奖励！"]

# 如果因为掉线强制结束则无安慰奖
execute if score $force_end mem matches 1 run tag @a remove total_rankl

# 返还双倍奖励次数
#execute if score $force_end mem matches 1 run scoreboard players add @a[team=playing,tag=double_reward] double_reward 1

# 安慰奖
execute as @a[tag=total_rankl] run scoreboard players add @s gold 3
execute as @a[tag=total_rankl] run scoreboard players add @s gold_total 3
tellraw @a[tag=total_rankl] [" 不要气馁，收下 ",{"text": "3 金粒","color":"gold"}," 奖励，再接再厉！"]