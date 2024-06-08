summon item ~ ~0.5 ~ {Item:{id:"minecraft:echo_shard",Count:1,tag:{element_war: 1b,shard:1b}},CustomName:'{"text": "元素晶片"}',CustomNameVisible:1b,Tags:["shard"],PickupDelay:32767,Age:-32768,Glowing:1b}
execute if score $element_target mem matches 3 run team join dark_purple @e[tag=shard]
execute if score $element_target mem matches 4 run team join dark_blue @e[tag=shard]
execute if score $element_target mem matches 5 run team join red @e[tag=shard]
execute if score $element_target mem matches 6 run team join blue @e[tag=shard]
data modify entity @e[tag=shard,limit=1] Item.tag.unpickable set from entity @s UUID
data modify entity @e[tag=target,limit=1] data.element_attach set value 0
summon text_display ~ ~1 ~ {billboard:"center",text:'{"text": "结晶","color": "#FFC125"}',Tags:["text_display"], brightness: {block: 15, sky: 15}, background: 0, alignment:"center"}
scoreboard players set @e[tag=text_display] countdown_fast 8
execute as @e[tag=text_display] at @s run function mini:element/game/element/tp_text_display

# 音效
playsound block.amethyst_block.break player @a ~ ~ ~

# 反应计数
scoreboard players add @p[tag=attacker] element_reaction 1