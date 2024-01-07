scoreboard players add @s stat_adv 1
scoreboard players add @s gold 81
execute at @s run function lib:sounds/levelup
execute if score $state mem matches 0 run function item:shop/refresh_gold
tellraw @s ["",{"text": ">> ","color":"green","bold": true},"你获得了 ",{"text":"1 金块","color":"gold"}," 完成奖励！"]