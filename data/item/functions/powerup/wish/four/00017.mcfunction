execute if score @s powerup_00017 matches 0..4 run summon marker ~ ~ ~ {Tags:["wish_marker"],CustomName:'{"text": "[碎片]「骨头」","color": "light_purple"}'}
execute if score @s powerup_00017 matches 5 run summon marker ~ ~ ~ {Tags:["wish_marker"],CustomName:'{"text": "[重复]「骨头」","color": "light_purple"}'}
execute if score @s powerup_00017 matches 5 run scoreboard players add @s primogem_temp 1
execute if score @s powerup_00017 matches 0..4 run scoreboard players add @s powerup_00017 1
execute if score @s powerup_00017 matches 0..4 at @s run function lib:sounds/levelup