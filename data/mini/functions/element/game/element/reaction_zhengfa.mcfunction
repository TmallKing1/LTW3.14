tag @e[tag=found_marker,limit=1] add zhengfa
execute if entity @p[tag=attacker] if score $element_type mem matches 5 run scoreboard players add $damage mem 12
execute if entity @p[tag=attacker] if score $element_type mem matches 4 run scoreboard players add $damage mem 6
data modify entity @e[tag=found_marker,limit=1] data.element_attach set value 0
summon text_display ~ ~1 ~ {billboard:"center",text:'{"text": "蒸发","color": "#FF8C00"}',Tags:["text_display"], brightness: {block: 15, sky: 15}, background: 0}
scoreboard players set @e[tag=text_display] countdown_fast 8
execute as @e[tag=text_display] at @s run function mini:element/game/element/tp_text_display

# 粒子
particle minecraft:poof ~ ~1 ~ 0.3 0.3 0.3 0 10

# 音效
playsound block.fire.extinguish player @a ~ ~ ~