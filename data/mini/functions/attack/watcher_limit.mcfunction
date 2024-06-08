# 观察者限制飞行范围
execute as @a[gamemode=spectator] if entity @s[x=1000.0,y=10,z=17048.0,distance=100..] run spectate
execute as @a[gamemode=spectator] if entity @s[x=1000.0,y=10,z=17048.0,distance=100..] run tp @s[team=!debugging] 934.72 31.30 17046.39 -450.53 16.39