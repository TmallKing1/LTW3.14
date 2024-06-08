data modify entity @e[tag=found_marker,limit=1] data.element_attach set value 0
tag @e[tag=found_marker,limit=1] add gandian
tag @e[tag=found_marker,limit=1] add gandiandamage
summon text_display ~ ~1 ~ {billboard:"center",text:'{"text": "感电","color": "#9400D3"}',Tags:["text_display"], brightness: {block: 15, sky: 15}, background: 0, alignment:"center"}
scoreboard players set @e[tag=text_display] countdown_fast 8
execute as @e[tag=text_display] at @s run function mini:element/game/element/tp_text_display

execute store result score $random mem run random value 3..4
execute if score $random mem matches 3 run damage @s 3 mini:element_damage
execute if score $random mem matches 4 run damage @s 4 mini:element_damage
tag @s add gandian_checked
execute as @a[distance=..7,tag=!attacker,tag=!gandian_checked] at @s run function mini:element/game/element/reaction_gandian_apply
execute if score $element_type mem matches 3..4 if score $random mem matches 3 if entity @p[tag=attacker] as @a[tag=gandian_checked1] run damage @s 3 mini:element_damage by @p[tag=attacker]
execute if score $element_type mem matches 3..4 if score $random mem matches 3 unless entity @p[tag=attacker] as @a[tag=gandian_checked1] run damage @s 3 mini:element_damage
execute if score $element_type mem matches 3..4 if score $random mem matches 4 if entity @p[tag=attacker] as @a[tag=gandian_checked1] run damage @s 4 mini:element_damage by @p[tag=attacker]
execute if score $element_type mem matches 3..4 if score $random mem matches 4 unless entity @p[tag=attacker] as @a[tag=gandian_checked1] run damage @s 4 mini:element_damage
execute if score $element_type mem matches 3..4 if score $random mem matches 5 if entity @p[tag=attacker] as @a[tag=gandian_checked1] run damage @s 5 mini:element_damage by @p[tag=attacker]
execute if score $element_type mem matches 3..4 if score $random mem matches 5 unless entity @p[tag=attacker] as @a[tag=gandian_checked1] run damage @s 5 mini:element_damage
tag @a remove gandian_checked
tag @a remove gandian_checked1

# 反应计数
scoreboard players add @p[tag=attacker] element_reaction 1