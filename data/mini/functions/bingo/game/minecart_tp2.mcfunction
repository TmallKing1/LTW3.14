tag @s add tp_player
data modify entity @s Pos set from entity @a[tag=tempPlayerTp,limit=1] Pos
data modify entity @s Rotation[0] set from entity @a[tag=tempPlayerTp,limit=1] Rotation[0]
data modify entity @s Rotation[1] set value 0f
tag @s add tpTemp
scoreboard players set @s temp 0
execute at @s run function mini:bingo/game/minecart_tp3