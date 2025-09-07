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
## 奖励增益模式
execute unless score $force_end mem matches 1 if score #gamemode mem matches 3 as @a[team=playing] run scoreboard players operation @s temp *= #2 mem
execute if score $force_end mem matches 1 if score #gamemode mem matches 3 as @a[team=playing] run scoreboard players set @s temp 0
## 双倍奖励活动
execute unless score $force_end mem matches 1 as @a[team=playing,tag=double_reward] run scoreboard players operation @s temp *= #2 mem
## 世界模式台阶增益
execute as @a[team=playing,tag=world_enable] store result score @s world_temp run function ltw:state/0/world/get_current_type
execute unless score $force_end mem matches 1 as @a[team=playing,tag=world_enable] if score @s world_temp matches 1 run scoreboard players operation @s temp *= #2 mem
## 2/3 倍
execute as @a[team=playing] run scoreboard players operation @s temp /= #3 mem
## 积分小于零时防止扣除
execute if score @s temp matches ..0 run scoreboard players set @s temp 0
## 最终结算
execute as @a[team=playing] run scoreboard players operation @s gold += @s temp
execute as @a[team=playing] run scoreboard players operation @s gold_total += @s temp

# 原石
execute as @a[team=playing] run scoreboard players operation @s temp2 = @s total_score
## 积分小于零时防止扣除
execute if score @s temp2 matches ..0 run scoreboard players set @s temp2 0
## 奖励增益模式
execute unless score $force_end mem matches 1 if score #gamemode mem matches 3 as @a[team=playing] run scoreboard players operation @s temp2 *= #3 mem
execute if score $force_end mem matches 1 if score #gamemode mem matches 3 as @a[team=playing] run scoreboard players set @s temp2 0
## 双倍奖励活动
execute unless score $force_end mem matches 1 as @a[team=playing,tag=double_reward] run scoreboard players operation @s temp2 *= #2 mem
## 世界模式台阶增益
execute unless score $force_end mem matches 1 as @a[team=playing,tag=world_enable] if score @s world_temp matches 1 run scoreboard players operation @s temp2 *= #2 mem
## 最终结算
execute as @a[team=playing] run scoreboard players operation @s primogem += @s temp2

# 计算经验值
execute unless score $force_end mem matches 1 as @a[team=playing] run scoreboard players add @s exp_temp 19
execute unless score $force_end mem matches 1 as @a[team=playing] run scoreboard players add @s[tag=total_rank1] exp_temp 9
execute unless score $force_end mem matches 1 as @a[team=playing] run scoreboard players add @s[tag=total_rank2] exp_temp 7
execute unless score $force_end mem matches 1 as @a[team=playing] run scoreboard players add @s[tag=total_rank3] exp_temp 5
execute as @a[team=playing] run scoreboard players operation @s stat_level_exp += @s exp_temp
execute as @a[team=playing,scores={stat_level_exp=100..}] run function ltw:main/player_level_up

tellraw @a[team=playing,scores={temp=1..}] [" 本局积分 ",{"score":{"name": "*","objective": "total_score"},"color":"gold"},"，获得 ",{"score":{"name": "*","objective": "exp_temp"},"color":"aqua"},{"text": " 经验","color":"aqua"},"、",{"score":{"name": "*","objective": "temp"},"color":"gold"},{"text": " 金粒","color":"gold"}," 与 ",{"score":{"name": "*","objective": "temp2"},"color":"light_purple"},{"text": " 魔法精华","color":"light_purple"}]

tellraw @a[team=playing,scores={temp=0,total_score=1..}] [" 本局积分 ",{"score":{"name": "*","objective": "total_score"},"color":"gold"},"，获得 ",{"score":{"name": "*","objective": "exp_temp"},"color":"aqua"},{"text": " 经验","color":"aqua"}," 与 ",{"score":{"name": "*","objective": "temp2"},"color":"light_purple"},{"text": " 魔法精华","color":"light_purple"}]

tellraw @a[team=playing,scores={temp=0,total_score=..0}] [" 本局积分 ",{"score":{"name": "*","objective": "total_score"},"color":"gold"},"，获得 ",{"score":{"name": "*","objective": "exp_temp"},"color":"aqua"},{"text": " 经验","color":"aqua"}]

# 局中金粒
tellraw @a[team=playing,scores={gold_extra=1..}] [" 在游戏过程中，你拿到了额外的 ",{"score":{"name": "*","objective": "gold_extra"},"color":"gold"},{"text": " 金粒","color":"gold"},"！"]

# 世界模式进度结算
tag @a remove world_feedback
execute as @a[tag=world_enable] run function ltw:state/0/world/update
schedule function ltw:state/0/world/feedback 5s

# 1.2 版本活动：发动总攻
#execute as @a[team=playing,scores={damage_dealt_back=1..}] run scoreboard players operation @s gold += @s damage_dealt_back
#tellraw @a[team=playing,scores={damage_dealt_back=1..}] [" 因为你在活动轮中的成绩，你获得了额外的 ",{"score":{"name": "*","objective": "damage_dealt_back"},"color":"gold"},{"text": " 金粒","color":"gold"},"！"]

# 局中绿宝石
tellraw @a[team=playing,scores={green_extra=1..}] [" 由于达成了进度，你得到了 ",{"score":{"name": "*","objective": "green_extra"},"color":"green"},{"text": " 绿宝石","color":"green"}," 完成奖励！"]

# 如果因为掉线强制结束则无安慰奖
execute if score $force_end mem matches 1 run tag @a remove total_rankl

# 返还双倍奖励次数
execute if score $force_end mem matches 1 run scoreboard players add @a[team=playing,tag=double_reward] double_reward 1

# 安慰奖
execute as @a[tag=total_rankl] run scoreboard players add @s gold 3
execute as @a[tag=total_rankl] run scoreboard players add @s gold_total 3
tellraw @a[tag=total_rankl] [" 不要气馁，收下 ",{"text": "3 金粒","color":"gold"}," 奖励，再接再厉！"]