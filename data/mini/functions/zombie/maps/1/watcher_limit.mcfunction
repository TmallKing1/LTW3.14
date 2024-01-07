# 观察者限制飞行范围
execute as @a[gamemode=spectator] unless entity @s[x=1001.0,y=5.0,z=12001.0,dx=24,dy=12,dz=29] run spectate
execute as @a[gamemode=spectator] unless entity @s[x=1001.0,y=5.0,z=12001.0,dx=24,dy=12,dz=29] run tp @s[team=!debugging] 1019.99 15.02 12025.66 142.95 17.10