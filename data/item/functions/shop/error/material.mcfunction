scoreboard players set @s buy_trigger 0
tellraw @s ["",{"text":">> ","color":"red","bold":true},{"text":"我不想浪费你的资源，但你还是去对应的地方购买吧！","color":"red"}]
execute at @s run function lib:sounds/error
