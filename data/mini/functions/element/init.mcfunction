# 计分板初始化
scoreboard objectives remove kills
scoreboard objectives add kills dummy ["玩家击杀数"]
scoreboard objectives remove element_attach
scoreboard objectives add element_attach dummy "元素附着"
scoreboard objectives remove damage_cd
scoreboard objectives add damage_cd dummy ["伤害冷却"]
scoreboard objectives remove sneak_time
scoreboard objectives add sneak_time minecraft.custom:sneak_time ["潜行时间"]
scoreboard objectives remove sneak_time_temp
scoreboard objectives add sneak_time_temp dummy ["潜行时间缓存"]
scoreboard objectives remove walk
scoreboard objectives add walk minecraft.custom:walk_one_cm ["行走距离"]
scoreboard objectives remove sneak
scoreboard objectives add sneak minecraft.custom:crouch_one_cm ["潜行距离"]
scoreboard objectives remove fall
scoreboard objectives add fall minecraft.custom:fall_one_cm ["下落距离"]
scoreboard objectives remove attack
scoreboard objectives add attack minecraft.used:wooden_sword ["木剑使用"]