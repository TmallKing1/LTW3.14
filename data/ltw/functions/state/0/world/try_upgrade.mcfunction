# 尝试升级，若步数不足以升级/到达终点则直接退出
execute if score @s world_stage = $world_stage_max mem run return fail
execute store result score $current_stage_step mem run function ltw:state/0/world/get_current_step
scoreboard players operation $current_stage_step mem *= #100 mem
execute if score @s world_progress < $current_stage_step mem run return fail

# 升级
scoreboard players set @s world_feedback_reward 0
function ltw:state/0/world/try_upgrade1
scoreboard players operation @s gold += @s world_feedback_reward

# 结束升级，若当前台阶类型为+2符咒则加符咒
execute store result score $current_stage_type mem run function ltw:state/0/world/get_current_type
execute if score $current_stage_type mem matches 3 run scoreboard players add @s primogem 128