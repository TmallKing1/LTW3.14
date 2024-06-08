tag @e[tag=found_marker,limit=1] add chaodao
execute store result score $random mem run random value 4..6
scoreboard players operation $damage mem += $random mem
data modify entity @e[tag=found_marker,limit=1] data.element_attach set value 0
summon text_display ~ ~1 ~ {billboard:"center",text:'{"text": "超导","color": "#8470FF"}',Tags:["text_display"], brightness: {block: 15, sky: 15}, background: 0, alignment:"center"}
scoreboard players set @e[tag=text_display] countdown_fast 8
execute as @e[tag=text_display] at @s run function mini:element/game/element/tp_text_display

# 粒子
particle minecraft:wax_off ~ ~1 ~ 0.3 0.3 0.3 0 30

# 音效
playsound item.trident.return player @a ~ ~ ~

# 反应计数
scoreboard players add @p[tag=attacker] element_reaction 1