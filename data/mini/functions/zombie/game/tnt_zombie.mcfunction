execute store result score $random mem run random value 1..10
execute if score $random mem matches 1 run function mini:zombie/game/tnt_zombie_explode