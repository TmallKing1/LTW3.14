scoreboard players add @s stat_adv_act 1
scoreboard players add @s primogem 84
scoreboard players add @s gold 18
execute if score $state mem matches 0 run function item:shop/refresh_essence
execute at @s run function lib:sounds/levelup
tellraw @s ["",{"text": ">> ","color":"green","bold": true},"你获得了 ",{"text":"84 魔法精华","color":"light_purple"}," 完成奖励！"]
tellraw @s ["",{"text": ">> ","color":"green","bold": true},"你获得了 ",{"text":"2 金锭","color":"gold"}," 完成奖励！"]