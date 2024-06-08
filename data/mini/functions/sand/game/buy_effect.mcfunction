execute unless score @s gold_inhand matches 10.. at @s run function lib:sounds/error
execute unless score @s gold_inhand matches 10.. run return run tellraw @s ["",{"text": ">> ","color": "red","bold": true},{"text": "你没有足够的金钱购买这个物品……","color": "red"}]
effect give @s water_breathing 15 1
scoreboard players remove @s gold_inhand 10
tellraw @s ["",{"text": ">> ","color": "green","bold": true},{"text": "购买成功！","color": "green"}]
function lib:sounds/hit
tag @s add effect_bought