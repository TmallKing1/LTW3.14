# 重置计分板
scoreboard objectives remove potionUse
scoreboard objectives add potionUse minecraft.used:minecraft.potion "药水计数器"
scoreboard objectives remove splashPotionUse
scoreboard objectives add splashPotionUse minecraft.used:minecraft.splash_potion "喷溅药水计数器"
scoreboard objectives remove potionType
scoreboard objectives add potionType dummy "药水类型"
scoreboard objectives remove health_virt
scoreboard objectives add health_virt dummy "剩余生命值"
scoreboard objectives remove damage_dealt
scoreboard objectives add damage_dealt minecraft.custom:damage_dealt "造成伤害值 *10"
scoreboard objectives remove damage_dealt_pure
scoreboard objectives add damage_dealt_pure dummy "造成伤害值（纯粹）"