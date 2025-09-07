execute if score @s powerup_00008 matches 0 run summon marker ~ ~ ~ {Tags:["wish_marker"],CustomName:'{"text": "[新]「石头」","color": "light_purple"}'}
execute unless score @s powerup_00008 matches 0 run summon marker ~ ~ ~ {Tags:["wish_marker"],CustomName:'{"text": "「石头」","color": "light_purple"}'}
execute if score @s powerup_00008 matches 1 run scoreboard players add @s primogem_temp 1
execute if score @s powerup_00008 matches 0 run scoreboard players add @s powerup_00008 1
execute if score @s powerup_00008 matches 0 at @s run function lib:sounds/levelup