# 重生
tag @s add resurrection
scoreboard players operation @s temp = @s vase_broken
scoreboard players operation @s vase_broken /= #2 mem
scoreboard players operation @s temp -= @s vase_broken
scoreboard players operation $player_alive1 mem = $player_alive mem
execute if score $player_alive1 mem matches 2.. run scoreboard players remove $player_alive1 mem 1
scoreboard players operation @s temp /= $player_alive1 mem
scoreboard players operation @a[tag=!resurrection,tag=mini_running] vase_broken += @s temp
execute at @s run function lib:sounds/error
spreadplayers 2034.0 2012.0 3 9 under 8 false @s
function mini:main/give_effect
execute if score $current_turn mem matches 1 as @s run attribute @s generic.max_health base set 20
execute if score $current_turn mem matches 2 as @s run attribute @s generic.max_health base set 18
execute if score $current_turn mem matches 3 as @s run attribute @s generic.max_health base set 16
execute if score $current_turn mem matches 4 as @s run attribute @s generic.max_health base set 14
execute if score $current_turn mem matches 5 as @s run attribute @s generic.max_health base set 12
execute if score $current_turn mem matches 6 as @s run attribute @s generic.max_health base set 10
execute if score $current_turn mem matches 7 as @s run attribute @s generic.max_health base set 8
execute if score $current_turn mem matches 8 as @s run attribute @s generic.max_health base set 6
execute if score $current_turn mem matches 9 as @s run attribute @s generic.max_health base set 4
execute if score $current_turn mem matches 10 as @s run attribute @s generic.max_health base set 2
effect give @s instant_damage
tag @s remove resurrection