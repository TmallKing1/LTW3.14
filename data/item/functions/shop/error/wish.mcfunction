execute if score @s buy_trigger matches 2000 run tellraw @s[scores={gold=..8}] ["",{"text":">> ","color":"red","bold":true},{"text":"连一个魔法符咒都没有, 就别再远程抽取啦!","color":"red"}]
execute if score @s buy_trigger matches 2000 run tellraw @s[scores={gold=9..}] ["",{"text":">> ","color":"red","bold":true},{"text":"幻境拒绝了你的远程抽取请求……","color":"red"}]
execute if score @s buy_trigger matches 2001 run tellraw @s[scores={gold=..0}] ["",{"text":">> ","color":"red","bold":true},{"text":"连10个魔法符咒都没有, 就别再远程抽十连啦!","color":"red"}]
execute if score @s buy_trigger matches 2001 run tellraw @s[scores={gold=1..}] ["",{"text":">> ","color":"red","bold":true},{"text":"幻境拒绝了你的远程抽取请求……","color":"red"}]
function lib:sounds/error
execute as @s run function item:shop/refresh_essence
scoreboard players set @s buy_trigger 0
