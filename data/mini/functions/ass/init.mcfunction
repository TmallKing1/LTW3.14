# 重置计分板
scoreboard objectives remove creeperUse
scoreboard objectives add creeperUse minecraft.used:minecraft.creeper_spawn_egg "苦力怕计数器"
scoreboard objectives remove creeperUsed
scoreboard objectives add creeperUsed dummy "已使用苦力怕"
scoreboard objectives remove health_alive
scoreboard objectives add health_alive dummy "生命值"
