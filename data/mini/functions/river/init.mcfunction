# 重置计分板
scoreboard objectives remove tran_mats
scoreboard objectives add tran_mats dummy "运输物资数"
scoreboard objectives remove tran_mats_ex
scoreboard objectives add tran_mats_ex dummy "时间阈值后运输物资数"