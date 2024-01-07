execute if score $element_size mem matches 1.. store result score $element_type mem run data get entity @e[type=marker,tag=found_marker,limit=1] data.elements[0]
execute unless score $element_size mem matches 1.. run scoreboard players set $element_type mem 0
function mini:element/game/player/display3
execute if score $element_size mem matches 2.. store result score $element_type mem run data get entity @e[type=marker,tag=found_marker,limit=1] data.elements[1]
execute unless score $element_size mem matches 2.. run scoreboard players set $element_type mem 0
function mini:element/game/player/display3
execute if score $element_size mem matches 3.. store result score $element_type mem run data get entity @e[type=marker,tag=found_marker,limit=1] data.elements[2]
execute unless score $element_size mem matches 3.. run scoreboard players set $element_type mem 0
function mini:element/game/player/display3
execute if score $element_size mem matches 4.. store result score $element_type mem run data get entity @e[type=marker,tag=found_marker,limit=1] data.elements[3]
execute unless score $element_size mem matches 4.. run scoreboard players set $element_type mem 0
function mini:element/game/player/display3
execute if score $element_size mem matches 5.. store result score $element_type mem run data get entity @e[type=marker,tag=found_marker,limit=1] data.elements[4]
execute unless score $element_size mem matches 5.. run scoreboard players set $element_type mem 0
function mini:element/game/player/display3