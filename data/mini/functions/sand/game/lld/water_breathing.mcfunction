execute as @a[tag=mini_running] store result score @s temp run data get entity @s Air
effect give @a[tag=mini_running,scores={temp=1..}] water_breathing 1 0