# 观察者限制飞行范围
execute as @a[gamemode=spectator,team=!debugging] unless entity @s[x=1001.0,y=6,z=14001.0,dx=26,dy=4.5,dz=26] run spectate
execute as @a[gamemode=spectator,team=!debugging] unless entity @s[x=1001.0,y=6,z=14001.0,dx=26,dy=4.5,dz=26] run tp @s 1025.57 10.20 14018.97 1540.20 42.45