# 观察者限制飞行范围
execute as @a[gamemode=spectator] unless entity @s[x=1001,y=8,z=18001,dx=17,dy=58,dz=17] run spectate
execute as @a[gamemode=spectator] unless entity @s[x=1001,y=8,z=18001,dx=17,dy=58,dz=17] run tp @s[team=!debugging] 1015.39 50.83 18015.78 498.00 69.45