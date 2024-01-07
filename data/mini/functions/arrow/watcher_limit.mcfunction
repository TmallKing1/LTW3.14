# 观察者限制飞行范围
execute as @a[gamemode=spectator] at @s if block ~ ~ ~ barrier run spectate
execute as @a[gamemode=spectator] at @s if block ~ ~ ~ barrier run tp @s[team=!debugging] 1005.01 30.87 13012.06 -69.45 20.55
execute as @a[gamemode=spectator] unless entity @s[x=1001,y=6,z=13000,dx=30,dy=28,dz=30] run spectate
execute as @a[gamemode=spectator] unless entity @s[x=1001,y=6,z=13000,dx=30,dy=28,dz=30] run tp @s[team=!debugging] 1005.01 30.87 13012.06 -69.45 20.55