# 重置计分板
scoreboard objectives remove use_snowball
scoreboard objectives add use_snowball minecraft.used:snowball "使用雪球"
scoreboard objectives remove vase_broken
scoreboard objectives add vase_broken dummy "破坏罐子数"
scoreboard objectives remove attack_count
scoreboard objectives add attack_count dummy "攻击次数"
scoreboard objectives remove vase_broken_dig
scoreboard objectives add vase_broken_dig minecraft.mined:decorated_pot "挖掘破坏罐子数"