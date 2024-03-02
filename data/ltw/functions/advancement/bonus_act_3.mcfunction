scoreboard players add @s stat_adv_act 1
scoreboard players add @s primogem 42
scoreboard players add @s gold 36
execute if score $state mem matches 0 run function item:shop/refresh_essence
tellraw @s ["",{"text": ">> ","color":"green","bold": true},"你获得了 ",{"text":"42 魔法精华","color":"light_purple"}," 完成奖励！"]
tellraw @s ["",{"text": ">> ","color":"green","bold": true},"你获得了 ",{"text":"4 金锭","color":"gold"}," 完成奖励！"]