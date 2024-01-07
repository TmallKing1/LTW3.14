# 重置计分板
scoreboard objectives remove TNTUse
scoreboard objectives add TNTUse minecraft.used:tnt "TNT计数器"
scoreboard objectives remove health_alive
scoreboard objectives add health_alive dummy "生命值"
scoreboard objectives remove damageTaken
scoreboard objectives add damageTaken minecraft.custom:damage_taken "受到伤害"