# 随机生成 TNT 的 X 与 Z 坐标（须保证 TNT 不会出界）
execute store result storage mini:chain TNT.TntX int 1 run random value 979..1018
execute store result storage mini:chain TNT.TntY int 1 run random value 17013..17082
function mini:chain/game/summon_tnt with storage mini:chain TNT