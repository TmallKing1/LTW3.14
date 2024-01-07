tag @e[tag=found_marker,limit=1] add chaozai
data modify entity @e[tag=found_marker,limit=1] data.element_attach set value 0
summon text_display ~ ~1 ~ {billboard:"center",text:'{"text": "超载","color": "#FF6A6A"}',Tags:["text_display"], brightness: {block: 15, sky: 15}, background: 0}
scoreboard players set @e[tag=text_display] countdown_fast 8
execute as @e[tag=text_display] at @s run function mini:element/game/element/tp_text_display

execute store result score $random mem run random value 3..4
execute as @a[distance=..5,tag=!attacker] run function mini:element/game/element/reaction_chaozai_apply

# 粒子
particle minecraft:explosion ~ ~1 ~ 1.25 0 1.25 0 10