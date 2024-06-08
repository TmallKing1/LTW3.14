tag @e[tag=found_marker,limit=1] add dongjie
scoreboard players set @e[tag=found_marker,limit=1] countdown_dongjie 10
data modify entity @e[tag=found_marker,limit=1] data.element_attach set value 0
tp @e[tag=found_marker,limit=1] @s
summon text_display ~ ~1 ~ {billboard:"center",text:'{"text": "冻结","color": "#97FFFF"}',Tags:["text_display"], brightness: {block: 15, sky: 15}, background: 0, alignment:"center"}
scoreboard players set @e[tag=text_display] countdown_fast 8
execute as @e[tag=text_display] at @s run function mini:element/game/element/tp_text_display

# 音效
playsound block.glass.break player @a ~ ~ ~

# 反应计数
scoreboard players add @p[tag=attacker] element_reaction 1