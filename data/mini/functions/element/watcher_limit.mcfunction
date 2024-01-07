# 观察者限制飞行范围
execute as @a[gamemode=spectator] unless entity @s[x=1001,y=63,z=15001,dx=44,dy=27,dz=44] run spectate
execute as @a[gamemode=spectator] unless entity @s[x=1001,y=63,z=15001,dx=44,dy=27,dz=44] run tp @s[team=!debugging] 1012.57 72.12 15012.20 317.90 14.98