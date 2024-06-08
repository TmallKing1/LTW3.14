# 重置计分板
scoreboard objectives remove damage_dealt
scoreboard objectives add damage_dealt minecraft.custom:damage_dealt "造成伤害值 *10"
scoreboard objectives remove damage_dealt_back
scoreboard objectives add damage_dealt_back dummy "造成伤害值备份"