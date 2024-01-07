# 观察者限制飞行范围
execute as @a[gamemode=spectator,team=!debugging] unless entity @s[x=1000.5,y=4,z=10000.5,dx=31,dy=32,dz=31] run spectate
execute as @a[gamemode=spectator,team=!debugging] unless entity @s[x=1000.5,y=4,z=10000.5,dx=31,dy=32,dz=31] run tp @s 1016.0 21 10016.0 135 70