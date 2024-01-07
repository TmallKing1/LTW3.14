execute store result score $random mem run random value 0..1
execute if score $random mem matches 0 run summon chicken ~ ~ ~ {Tags:["new_duck","harmless_duck","to_player","player_direction"]}
execute if score $random mem matches 1 run summon chicken ~ ~ ~ {Tags:["new_duck","harmless_duck"]}
spreadplayers 1014.0 14014.0 3 10 under 7 false @e[tag=new_duck]