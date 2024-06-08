# 观察者限制飞行范围
execute as @a[gamemode=spectator] unless entity @s[x=2001.3,y=5,z=3001.3,dx=29.4,dy=18.2,dz=26.4] run spectate
execute as @a[gamemode=spectator] unless entity @s[x=2001.3,y=5,z=3001.3,dx=29.4,dy=18.2,dz=26.4] run tp @s[team=!debugging] 2011.64 22.54 3012.48 288.90 21.75