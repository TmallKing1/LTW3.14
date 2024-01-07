# 重置计分板
scoreboard objectives remove duckUse
scoreboard objectives add duckUse minecraft.used:minecraft.chicken_spawn_egg "鸭子计数器"
scoreboard objectives remove bucketUse
scoreboard objectives add bucketUse minecraft.used:minecraft.water_bucket "水桶计数器"
scoreboard objectives remove duckMotionX
scoreboard objectives add duckMotionX dummy "鸭子速度X"
scoreboard objectives remove duckMotionZ
scoreboard objectives add duckMotionZ dummy "鸭子速度Z"
scoreboard objectives remove countdown_invulnerable 
scoreboard objectives add countdown_invulnerable dummy "无敌时间"