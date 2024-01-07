# 观察者限制飞行范围
execute as @a[gamemode=spectator] unless entity @s[x=1001.0,y=6.0,z=16000.0,dx=30,dy=30,dz=30] run spectate
execute as @a[gamemode=spectator] unless entity @s[x=1001.0,y=6.0,z=16000.0,dx=30,dy=30,dz=30] run tp @s[team=!debugging] 1003.72 30.43 16025.77 226.10 41.48