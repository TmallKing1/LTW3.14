execute if score #gamemode mem matches 0 run tellraw @a[tag=pass_setup] ["",{"text": ">> ","color": "aqua","bold": true},{"text": "已切换为经典模式！","color": "aqua"}]
execute if score #gamemode mem matches 0 as @a[tag=pass_setup] at @s run function lib:sounds/hit2
execute if score #gamemode mem matches 0 run scoreboard players set #gamemode mem -1
execute if score #gamemode mem matches 1 run tellraw @a[tag=pass_setup] ["",{"text": ">> ","color": "aqua","bold": true},{"text": "已切换为改版模式！","color": "aqua"}]
execute if score #gamemode mem matches 1 as @a[tag=pass_setup] at @s run function lib:sounds/hit2
execute if score #gamemode mem matches 1 run scoreboard players set #gamemode mem -2
execute if score #gamemode mem matches 2 run tellraw @p ["",{"text": ">> ","color": "red","bold": true},{"text": "双倍模式已开启，无法切换！","color": "red"}]
execute if score #gamemode mem matches 2 as @p at @s run function lib:sounds/error
execute if score #gamemode mem matches ..-1 run scoreboard players add #gamemode mem 2