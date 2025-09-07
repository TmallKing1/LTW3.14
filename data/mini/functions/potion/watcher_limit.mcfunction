# 观察者限制飞行范围
execute as @a[gamemode=spectator] unless entity @s[x=2001.3,y=11.0,z=4001.3,dx=21.4,dy=9.2,dz=21.4] run spectate
execute as @a[gamemode=spectator] unless entity @s[x=2001.3,y=11.0,z=4001.3,dx=21.4,dy=9.2,dz=21.4] run tp @s[team=!debugging] 2003.84 12.33 4003.11 -401.40 5.25