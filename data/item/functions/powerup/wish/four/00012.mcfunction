execute if score @s powerup_00012 matches 0 run summon marker ~ ~ ~ {Tags:["wish_marker"],CustomName:'{"text": "[新]「标靶」","color": "light_purple"}'}
execute unless score @s powerup_00012 matches 0 run summon marker ~ ~ ~ {Tags:["wish_marker"],CustomName:'{"text": "「标靶」","color": "light_purple"}'}
execute if score @s powerup_00012 matches 1 run scoreboard players add @s primogem_temp 1
execute if score @s powerup_00012 matches 0 run scoreboard players add @s powerup_00012 1
execute if score @s powerup_00012 matches 0 at @s run function lib:sounds/levelup