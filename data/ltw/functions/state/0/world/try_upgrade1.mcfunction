# 扣除世界进度
scoreboard players operation @s world_progress -= $current_stage_step mem

# 提升 1 台阶
scoreboard players add @s world_stage 1

# 获取所在台阶的信息，递归上台阶
execute store result score $current_stage_step mem run function ltw:state/0/world/get_current_step
execute store result score $current_stage_reward mem run function ltw:state/0/world/get_current_reward
scoreboard players operation @s world_feedback_reward += $current_stage_reward mem
execute if score @s world_stage = $world_stage_max mem run return fail
scoreboard players operation $current_stage_step mem *= #100 mem
execute if score @s world_progress >= $current_stage_step mem run function ltw:state/0/world/try_upgrade1