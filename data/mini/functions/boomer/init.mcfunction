# 重置计分板
scoreboard objectives remove TNTUse
scoreboard objectives add TNTUse minecraft.used:tnt "TNT计数器"
scoreboard objectives remove damageTaken
scoreboard objectives add damageTaken minecraft.custom:damage_taken "受到伤害"