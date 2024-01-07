execute store result score $max_length_desc mem run data get entity @e[type=marker,tag=lld,limit=1] data.length_desc
execute store result score $max_length_title mem run data get entity @e[type=marker,tag=lld,limit=1] data.length_title
scoreboard players set $length_desc mem 0
scoreboard players set $length_title mem 4
kill @e[tag=prepare_display]
summon marker ~ ~ ~ {Tags: ["prepare_display"]}
data modify entity @e[tag=prepare_display,limit=1] CustomName set from entity @e[tag=lld,limit=1] data.description