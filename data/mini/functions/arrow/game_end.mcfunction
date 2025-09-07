# 结束掘一死箭
forceload remove 1000 13000 1031 13031
gamerule doTileDrops false

schedule clear mini:arrow/player_enter2

# 清理残余实体
kill @e[type=arrow]
kill @e[type=spectral_arrow]
kill @e[type=tnt]