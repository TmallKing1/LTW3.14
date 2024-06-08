# 计分板初始化
scoreboard objectives remove player_atk
scoreboard objectives add player_atk dummy ["伤害提升"]
scoreboard objectives remove player_energy
scoreboard objectives add player_energy dummy ["玩家能量值"]
scoreboard objectives remove kill_streak
scoreboard objectives add kill_streak dummy ["连杀次数"]
scoreboard objectives remove last_damage_UUID
scoreboard objectives add last_damage_UUID dummy ["最后一次伤害UUID"]
scoreboard objectives remove last_damage_type
scoreboard objectives add last_damage_type dummy ["最后一次伤害类型"]