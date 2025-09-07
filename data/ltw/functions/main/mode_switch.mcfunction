execute if score #gamemode mem matches 0 run tellraw @a[tag=pass_setup] ["",{"text": ">> ","color": "aqua","bold": true},{"text": "已切换为经典模式！","color": "aqua"}]
execute if score #gamemode mem matches 0 as @a[tag=pass_setup] at @s run function lib:sounds/hit2
execute if score #gamemode mem matches 0 run return run scoreboard players set #gamemode mem 1
execute if score #gamemode mem matches 1 run tellraw @a[tag=pass_setup] ["",{"text": ">> ","color": "aqua","bold": true},{"text": "已切换为逆转模式！","color": "aqua"}]
execute if score #gamemode mem matches 1 as @a[tag=pass_setup] at @s run function lib:sounds/hit2
execute if score #gamemode mem matches 1 run return run scoreboard players set #gamemode mem 2
execute if score #gamemode mem matches 2 unless score $boost_active mem matches 1 run tellraw @a[tag=pass_setup] ["",{"text": ">> ","color": "aqua","bold": true},{"text": "已切换为改版模式！","color": "aqua"}]
execute if score #gamemode mem matches 2 unless score $boost_active mem matches 1 as @a[tag=pass_setup] at @s run function lib:sounds/hit2
execute if score #gamemode mem matches 2 unless score $boost_active mem matches 1 run return run scoreboard players set #gamemode mem 0
execute if score #gamemode mem matches 2 if score $boost_active mem matches 1 run tellraw @a[tag=pass_setup] ["",{"text": ">> ","color": "aqua","bold": true},{"text": "已切换为奖励增益模式！","color": "aqua"}]
execute if score #gamemode mem matches 2 if score $boost_active mem matches 1 as @a[tag=pass_setup] at @s run function lib:sounds/hit2
execute if score #gamemode mem matches 2 if score $boost_active mem matches 1 run return run scoreboard players set #gamemode mem 3
execute if score #gamemode mem matches 3 run tellraw @a[tag=pass_setup] ["",{"text": ">> ","color": "aqua","bold": true},{"text": "已切换为改版模式！","color": "aqua"}]
execute if score #gamemode mem matches 3 as @a[tag=pass_setup] at @s run function lib:sounds/hit2
execute if score #gamemode mem matches 3 run return run scoreboard players set #gamemode mem 0