execute if score @s powerup_00018 matches 0..4 run summon marker ~ ~ ~ {Tags:["wish_marker"],CustomName:'{"text": "[碎片]「拴绳」","color": "light_purple"}'}
execute if score @s powerup_00018 matches 5 run summon marker ~ ~ ~ {Tags:["wish_marker"],CustomName:'{"text": "[重复]「拴绳」","color": "light_purple"}'}
execute if score @s powerup_00018 matches 5 run scoreboard players add @s primogem_temp 1
execute if score @s powerup_00018 matches 0..4 run scoreboard players add @s powerup_00018 1
execute if score @s powerup_00018 matches 0..4 at @s run function lib:sounds/levelup