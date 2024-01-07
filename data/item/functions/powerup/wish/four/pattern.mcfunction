scoreboard players operation $trim_num mem = $random_pattern mem
function item:armor_trim/has_armor_trim
$data modify storage item:armor RandomPattern.Type set from storage item:armor Types[$(Index)]
function item:powerup/wish/four/pattern_display with storage item:armor RandomPattern
execute if score @s trim_boolean matches 0 run tellraw @s ["",{"text": ">> ","color": "green","bold": true},{"text": "你获得了一个新物品！","color": "green"}]
execute if score @s trim_boolean matches 1 run tellraw @s ["",{"text": ">> ","color": "green","bold": true},{"text": "你已经获得过该物品，返还 1 个魔法符咒！","color": "green"}]
execute if score @s trim_boolean matches 1 run scoreboard players add @s primogem 64
execute if score @s trim_boolean matches 0 run scoreboard players operation $trim_num mem = $random_pattern mem
execute if score @s trim_boolean matches 0 run function item:armor_trim/give_armor_trim
execute if score @s trim_boolean matches 0 at @s run function lib:sounds/levelup