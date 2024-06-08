# 计分板初始化
scoreboard objectives remove kill_streak
scoreboard objectives add kill_streak dummy ["连杀次数"]
scoreboard objectives remove last_damage_UUID
scoreboard objectives add last_damage_UUID dummy ["最后一次伤害UUID"]
scoreboard objectives remove last_damage_type
scoreboard objectives add last_damage_type dummy ["最后一次伤害类型"]