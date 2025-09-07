# 玩家显示世界模式格子信息
execute as @a[team=!debugging,tag=pass_setup] at @s run function ltw:state/0/world/display

# 掉入世界地图外的玩家传送回去
tp @a[x=936,y=0,z=-2091,dx=150,dy=-30,dz=200] 1001 15 -2054 0 0