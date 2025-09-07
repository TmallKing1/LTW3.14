# 世界进度 = (2.5 + 2.45 * sqrt(max(0, score - 4))) * (1 + boost)
scoreboard players operation @s world_temp = @s total_score
scoreboard players remove @s world_temp 4
scoreboard players set @s[scores={world_temp=..-1}] world_temp 0
scoreboard players operation @s world_temp *= #10000 mem
scoreboard players operation $square mem = @s world_temp
function lib:sqrt
scoreboard players operation @s world_temp = $square_root mem
scoreboard players operation @s world_temp *= #49 mem
scoreboard players operation @s world_temp /= #20 mem
scoreboard players add @s world_temp 250
scoreboard players operation @s[scores={world_boost=1}] world_temp *= #11 mem
scoreboard players operation @s[scores={world_boost=1}] world_temp /= #10 mem
scoreboard players operation @s[scores={world_boost=2}] world_temp *= #6 mem
scoreboard players operation @s[scores={world_boost=2}] world_temp /= #5 mem
scoreboard players operation @s[scores={world_boost=3}] world_temp *= #3 mem
scoreboard players operation @s[scores={world_boost=3}] world_temp /= #2 mem
scoreboard players set @s world_boost 0

# 如果当前台阶为限制且限制类型不匹配，则不累积世界进度
execute store result score $current_stage_type mem run function ltw:state/0/world/get_current_type
scoreboard players operation $current_stage_type mem *= #-1 mem
scoreboard players remove $current_stage_type mem 1
execute unless score $current_stage_type mem matches ..-1 unless score $current_stage_type mem = #gamemode mem run return fail

# 累积世界进度并升级
tag @s add world_feedback
scoreboard players operation @s world_progress += @s world_temp
scoreboard players operation @s world_feedback_step = @s world_temp
scoreboard players set @s world_feedback_reward 0
function ltw:state/0/world/try_upgrade