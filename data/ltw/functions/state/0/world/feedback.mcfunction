# 向玩家显示世界模式信息
execute as @a[tag=world_feedback] run function ltw:state/0/world/feedback1
tag @a remove world_feedback