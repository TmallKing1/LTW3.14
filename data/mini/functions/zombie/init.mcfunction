# 重置计分板
scoreboard objectives remove kill_zombie
scoreboard objectives add kill_zombie killed:zombie "僵尸击杀数"

scoreboard objectives remove fall_distance
scoreboard objectives add fall_distance dummy "僵尸下落高度"
scoreboard objectives remove zombie_max_health
scoreboard objectives add zombie_max_health dummy "僵尸最大生命值"
scoreboard objectives remove zombie_health
scoreboard objectives add zombie_health dummy "僵尸生命值"
scoreboard objectives remove attacker_UUID
scoreboard objectives add attacker_UUID dummy "攻击者UUID"

team add zombie "僵尸"
team modify zombie collisionRule always
team modify zombie friendlyFire false