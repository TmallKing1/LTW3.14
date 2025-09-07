execute if score @s powerup_00019 matches 0..4 run summon marker ~ ~ ~ {Tags:["wish_marker"],CustomName:'{"text": "[碎片]「红色床」","color": "light_purple"}'}
execute if score @s powerup_00019 matches 5 run summon marker ~ ~ ~ {Tags:["wish_marker"],CustomName:'{"text": "[重复]「红色床」","color": "light_purple"}'}
execute if score @s powerup_00019 matches 5 run scoreboard players add @s primogem_temp 1
execute if score @s powerup_00019 matches 0..4 run scoreboard players add @s powerup_00019 1
execute if score @s powerup_00019 matches 0..4 at @s run function lib:sounds/levelup