tag @s add powered
playsound block.beacon.activate player @s ~ ~ ~ 1 2
tellraw @s ["",{"text": ">> ","color": "green","bold": true},{"text": "你已为剑充能！","color": "green"}]
scoreboard players set @s player_energy 0