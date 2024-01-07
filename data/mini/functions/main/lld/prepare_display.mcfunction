execute store result score $title_ob mem run random value 1..20
execute store result score $subtitle_ob mem run random value 1..20
execute if score $lld_prepare mem matches 1..80 run title @a title [{"text": "⚠ ","color": "blue","obfuscated": false},{"text":"WARNING!"},{"text": " ⚠"}]
execute if score $lld_prepare mem matches 1..80 run title @a subtitle [{"text":"你说得对，但是规则就是用来打破的!","obfuscated": false}]
execute if score $lld_prepare mem matches 1 as @a[team=!debugging] at @s run playsound minecraft:block.note_block.banjo player @s ~ ~ ~ 1 0.5
execute if score $lld_prepare mem matches 11 as @a[team=!debugging] at @s run playsound minecraft:block.note_block.banjo player @s ~ ~ ~ 1 0.5
execute if score $lld_prepare mem matches 21 as @a[team=!debugging] at @s run playsound minecraft:block.note_block.banjo player @s ~ ~ ~ 1 0.5
execute if score $lld_prepare mem matches 31 as @a[team=!debugging] at @s run playsound minecraft:block.note_block.banjo player @s ~ ~ ~ 1 0.5

execute if score $lld_prepare mem matches 81..100 run title @a title [{"text": "⚠ ","color": "blue","obfuscated": false},{"text":" 你说得对","obfuscated": true},{"text": " ⚠"}]
execute if score $lld_prepare mem matches 81 run title @a subtitle [{"text":"你说得对，但是规则就是用来打破的","obfuscated": false}]
execute if score $lld_prepare mem matches 82 run title @a subtitle [{"text":"你说得对，但是规则就是用来打破","obfuscated": false}]
execute if score $lld_prepare mem matches 83 run title @a subtitle [{"text":"你说得对，但是规则就是用来打","obfuscated": false}]
execute if score $lld_prepare mem matches 84 run title @a subtitle [{"text":"你说得对，但是规则就是用来","obfuscated": false}]
execute if score $lld_prepare mem matches 85 run title @a subtitle [{"text":"你说得对，但是规则就是用","obfuscated": false}]
execute if score $lld_prepare mem matches 86 run title @a subtitle [{"text":"你说得对，但是规则就是","obfuscated": false}]
execute if score $lld_prepare mem matches 87 run title @a subtitle [{"text":"你说得对，但是规则就","obfuscated": false}]
execute if score $lld_prepare mem matches 88 run title @a subtitle [{"text":"你说得对，但是规则","obfuscated": false}]
execute if score $lld_prepare mem matches 89 run title @a subtitle [{"text":"你说得对，但是规","obfuscated": false}]
execute if score $lld_prepare mem matches 90 run title @a subtitle [{"text":"你说得对，但是","obfuscated": false}]
execute if score $lld_prepare mem matches 91 run title @a subtitle [{"text":"你说得对，但","obfuscated": false}]
execute if score $lld_prepare mem matches 92 run title @a subtitle [{"text":"你说得对，","obfuscated": false}]
execute if score $lld_prepare mem matches 93 run title @a subtitle [{"text":"你说得对","obfuscated": false}]
execute if score $lld_prepare mem matches 94 run title @a subtitle [{"text":"你说得","obfuscated": false}]
execute if score $lld_prepare mem matches 95 run title @a subtitle [{"text":"你说","obfuscated": false}]
execute if score $lld_prepare mem matches 96 run title @a subtitle [{"text":"你","obfuscated": false}]
execute if score $lld_prepare mem matches 97 run title @a subtitle [{"text":"","obfuscated": false}]

execute if score $lld_prepare mem matches 101..220 run title @a title [{"text": "⚠ ","color": "blue","obfuscated": false},{"selector":"@e[type=marker,tag=lld]","obfuscated": false},{"text": " ⚠"}]

execute if score $lld_prepare mem matches 101 run function mini:main/lld/prepare_display_1
execute if score $lld_prepare mem matches 101..220 run function mini:main/lld/prepare_display_2

execute if score $lld_prepare mem matches 141 run scoreboard players operation $ley_line_disorder mem = $lld_temp mem
execute if score $lld_prepare mem matches 141 as @a at @s run playsound block.end_portal.spawn player @s
execute if score $lld_prepare mem matches 141 if data entity @e[type=marker,tag=lld,limit=1] data.period run function mini:main/lld/period

execute if score $lld_prepare mem matches 220.. run function mini:main/lld/prepare_display_end
scoreboard players add $lld_prepare mem 1