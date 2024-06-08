# 重置计分板
scoreboard objectives remove gold_ingame
scoreboard objectives add gold_ingame dummy "存放金钱数"
scoreboard objectives remove gold_inhand
scoreboard objectives add gold_inhand dummy "携带金钱数"
scoreboard objectives remove chest_open
scoreboard objectives add chest_open minecraft.custom:open_chest