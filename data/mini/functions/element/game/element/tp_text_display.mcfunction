execute store result score $random mem run random value -3..3
execute if score $random mem matches -3 run summon marker ~-0.3 ~ ~ {Tags:["marki"]}
execute if score $random mem matches -2 run summon marker ~-0.2 ~ ~ {Tags:["marki"]}
execute if score $random mem matches -1 run summon marker ~-0.1 ~ ~ {Tags:["marki"]}
execute if score $random mem matches 0 run summon marker ~ ~ ~ {Tags:["marki"]}
execute if score $random mem matches 1 run summon marker ~0.1 ~ ~ {Tags:["marki"]}
execute if score $random mem matches 2 run summon marker ~0.2 ~ ~ {Tags:["marki"]}
execute if score $random mem matches 3 run summon marker ~0.3 ~ ~ {Tags:["marki"]}
execute store result score $random mem run random value -3..3
execute if score $random mem matches -3 at @e[tag=marki] run tp ~ ~ ~-0.3
execute if score $random mem matches -2 at @e[tag=marki] run tp ~ ~ ~-0.2
execute if score $random mem matches -1 at @e[tag=marki] run tp ~ ~ ~-0.1
execute if score $random mem matches 0 at @e[tag=marki] run tp ~ ~ ~
execute if score $random mem matches 1 at @e[tag=marki] run tp ~ ~ ~0.1
execute if score $random mem matches 2 at @e[tag=marki] run tp ~ ~ ~0.2
execute if score $random mem matches 3 at @e[tag=marki] run tp ~ ~ ~0.3
kill @e[tag=marki]
tag @s remove text_display