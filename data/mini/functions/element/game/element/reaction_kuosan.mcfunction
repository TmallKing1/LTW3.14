tag @e[tag=found_marker,limit=1] add kuosan
execute store result score $random mem run random value 4..6
scoreboard players operation $damage mem += $random mem
execute if score $element_target mem matches 3 as @a[distance=..6,tag=!attacker] run function mini:element/game/element/3_electro_attach
execute if score $element_target mem matches 4 as @a[distance=..6,tag=!attacker] run function mini:element/game/element/4_hydro_attach
execute if score $element_target mem matches 5 as @a[distance=..6,tag=!attacker] run function mini:element/game/element/5_pyro_attach
execute if score $element_target mem matches 6 as @a[distance=..6,tag=!attacker] run function mini:element/game/element/6_cryo_attach
data modify entity @e[tag=target,limit=1] data.element_attach set value 0
summon text_display ~ ~1 ~ {billboard:"center",text:'{"text": "扩散","color": "#76EEC6"}',Tags:["text_display"], brightness: {block: 15, sky: 15}, background: 0, alignment:"center"}
scoreboard players set @e[tag=text_display] countdown_fast 8
execute as @e[tag=text_display] at @s run function mini:element/game/element/tp_text_display

# 粒子
execute if score $element_target mem matches 3 run particle dust 0.592 0.212 0.573 1 ~ ~0.3 ~ 1.75 0.0 1.75 10 300
execute if score $element_target mem matches 4 run particle dust 0.039 0.2 0.906 1 ~ ~0.3 ~ 1.75 0.0 1.75 10 300
execute if score $element_target mem matches 5 run particle dust 0.694 0.149 0.149 1 ~ ~0.3 ~ 1.75 0.0 1.75 10 300
execute if score $element_target mem matches 6 run particle dust 0.035 0.761 0.875 1 ~ ~0.3 ~ 1.75 0.0 1.75 10 300

# 音效
playsound entity.ender_dragon.flap player @a ~ ~ ~

# 反应计数
scoreboard players add @p[tag=attacker] element_reaction 1