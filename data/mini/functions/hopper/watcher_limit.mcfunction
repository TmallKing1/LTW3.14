# 观察者限制飞行范围
execute unless score $state mem matches 5 run tp @a[gamemode=spectator,team=!debugging] 4.5 228 4997 -90 0
execute as @a[gamemode=spectator,x=-16.0,y=240,z=4984.0,distance=70..] run spectate
tp @a[gamemode=spectator,x=-16.0,y=240,z=4984.0,distance=70..,team=!debugging] 4.5 228 4997 -90 0