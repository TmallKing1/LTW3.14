# 重置计分板
scoreboard objectives remove quest_complete
scoreboard objectives add quest_complete dummy "任务完成数"
scoreboard objectives remove goal_id
scoreboard objectives add goal_id dummy "目标 ID"
scoreboard objectives remove goal_pos
scoreboard objectives add goal_pos dummy "目标位置"