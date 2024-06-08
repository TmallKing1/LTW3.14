# 计分板初始化
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

## 倒计时
scoreboard objectives remove countdown_dongjie
scoreboard objectives add countdown_dongjie dummy "冻结倒计时"
scoreboard objectives remove countdown_attach
scoreboard objectives add countdown_attach dummy "附着倒计时"

## 元素数量
scoreboard objectives remove anemo_count
scoreboard objectives add anemo_count dummy
scoreboard objectives remove geo_count
scoreboard objectives add geo_count dummy
scoreboard objectives remove electro_count
scoreboard objectives add electro_count dummy
scoreboard objectives remove hydro_count
scoreboard objectives add hydro_count dummy
scoreboard objectives remove pyro_count
scoreboard objectives add pyro_count dummy
scoreboard objectives remove cryo_count
scoreboard objectives add cryo_count dummy

scoreboard objectives add element_reaction dummy "元素反应次数"
scoreboard objectives add element_burst dummy "元素爆发次数"