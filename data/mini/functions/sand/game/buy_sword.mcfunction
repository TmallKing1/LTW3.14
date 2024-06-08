execute unless score @s gold_inhand matches 15.. at @s run function lib:sounds/error
execute unless score @s gold_inhand matches 15.. run return run tellraw @s ["",{"text": ">> ","color": "red","bold": true},{"text": "你没有足够的金钱购买这个物品……","color": "red"}]
execute unless score $ley_line_disorder mem matches 2 run give @s golden_sword{Damage: 23, AttributeModifiers:[{Amount: 22, AttributeName:"minecraft:generic.attack_damage",Name:"",Operation:0,Slot:"mainhand",UUID:[I;1,1,4,5]}],Enchantments:[{id:"protection",lvl:1}],HideFlags:3, game_item: 1b}
execute if score $ley_line_disorder mem matches 2 run give @s golden_sword{Damage: 31, AttributeModifiers:[{Amount: 1145, AttributeName:"minecraft:generic.attack_damage",Name:"",Operation:0,Slot:"mainhand",UUID:[I;1,1,4,5]}],Enchantments:[{id:"protection",lvl:1}],HideFlags:3, game_item: 1b}
scoreboard players remove @s gold_inhand 15
tellraw @s ["",{"text": ">> ","color": "green","bold": true},{"text": "购买成功！","color": "green"}]
function lib:sounds/hit