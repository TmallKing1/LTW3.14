execute if score @s buy_trigger matches 999 run tellraw @s[scores={gold=..8}] ["",{"text":">> ","color":"red","bold":true},{"text":"连一个金锭都没有, 就别再远程丢骰子啦!","color":"red"}]
execute if score @s buy_trigger matches 999 run tellraw @s[scores={gold=9..}] ["",{"text":">> ","color":"red","bold":true},{"text":"一个金锭凭空出现在了老板面前, 但老板没有看见人影, 只好收下了金锭……","color":"red"}]
execute if score @s buy_trigger matches 999 run scoreboard players remove @s[scores={gold=9..}] gold 9
execute if score @s buy_trigger matches 777 run tellraw @s[scores={gold=..0}] ["",{"text":">> ","color":"red","bold":true},{"text":"连一个金粒都没有, 就别再远程买777啦!","color":"red"}]
execute if score @s buy_trigger matches 777 run tellraw @s[scores={gold=1..}] ["",{"text":">> ","color":"red","bold":true},{"text":"一个金粒凭空出现在了老板面前, 但老板没有看见人影, 只好收下了金粒……","color":"red"}]
execute if score @s buy_trigger matches 777 run scoreboard players remove @s[scores={gold=1..}] gold 1
execute if score @s buy_trigger matches 1000 run tellraw @s[scores={gold=..728}] ["",{"text":">> ","color":"red","bold":true},{"text":"连九个金块都没有, 就别再远程买传送卷轴啦!","color":"red"}]
execute if score @s buy_trigger matches 1000 run tellraw @s[scores={gold=729..}] ["",{"text":">> ","color":"red","bold":true},{"text":"九个金块凭空出现在了老板面前, 但老板没有看见人影, 只好收下了金块……","color":"red"}]
execute if score @s buy_trigger matches 1000 run scoreboard players remove @s[scores={gold=729..}] gold 729
function lib:sounds/error
execute as @s run function item:shop/refresh_gold
scoreboard players set @s buy_trigger 0
