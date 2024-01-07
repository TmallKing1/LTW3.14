scoreboard players add @s stat_adv_act 1
scoreboard players add @s primogem 126
scoreboard players add @s gold 54
execute if score $state mem matches 0 run function item:shop/refresh_essence
execute at @s run function lib:sounds/levelup
tellraw @s ["",{"text": ">> ","color":"green","bold": true},"你获得了 ",{"text":"126 魔法精华","color":"light_purple"}," 完成奖励！"]
tellraw @s ["",{"text": ">> ","color":"green","bold": true},"你获得了 ",{"text":"6 金锭","color":"gold"}," 完成奖励！"]
