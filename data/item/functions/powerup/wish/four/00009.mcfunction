execute if score @s powerup_00009 matches 0 run summon marker ~ ~ ~ {Tags:["wish_marker"],CustomName:'{"text": "[新]「侦测器」","color": "light_purple"}'}
execute unless score @s powerup_00009 matches 0 run summon marker ~ ~ ~ {Tags:["wish_marker"],CustomName:'{"text": "「侦测器」","color": "light_purple"}'}
execute if score @s powerup_00009 matches 1 run scoreboard players add @s primogem_temp 1
execute if score @s powerup_00009 matches 0 run scoreboard players add @s powerup_00009 1
execute if score @s powerup_00009 matches 0 at @s run function lib:sounds/levelup