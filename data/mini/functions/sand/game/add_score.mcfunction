scoreboard players set @s chest_open 0
execute if score @s gold_inhand matches ..0 at @s run function lib:sounds/error
execute if score @s gold_inhand matches ..0 run return run tellraw @s ["",{"text": ">> ","color": "red","bold": true},{"text": "没钱你存个毛线呢……","color": "red"}]
scoreboard players operation @s gold_ingame += @s gold_inhand
scoreboard players set @s gold_inhand 0
execute at @s run function lib:sounds/levelup