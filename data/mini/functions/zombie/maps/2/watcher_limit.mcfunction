# 观察者限制飞行范围
execute as @a[gamemode=spectator] unless entity @s[x=1980.0,y=-7.0,z=11980.0,dx=52,dy=27,dz=52] run spectate
execute as @a[gamemode=spectator] unless entity @s[x=1980.0,y=-7.0,z=11980.0,dx=52,dy=27,dz=52] run tp @s[team=!debugging] 2011.35 2.66 11986.82 359.54 1.93