# 观察者限制飞行范围
execute as @a[gamemode=spectator] unless entity @s[x=978,y=-80,z=18978,dx=88,dy=51,dz=88] run spectate
execute as @a[gamemode=spectator] unless entity @s[x=978,y=-80,z=18978,dx=88,dy=51,dz=88] run tp @s[team=!debugging] 1003.56 -38.75 19002.79 -43.65 37.50