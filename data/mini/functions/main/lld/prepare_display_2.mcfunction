execute if score $length_desc mem < $max_length_desc mem if score $max_length_desc mem matches ..19 run scoreboard players add $length_desc mem 1
execute if score $length_desc mem < $max_length_desc mem if score $max_length_desc mem matches 20.. run scoreboard players add $length_desc mem 2
execute if score $length_desc mem > $max_length_desc mem run scoreboard players operation $length_desc mem = $max_length_desc mem
execute if score $length_desc mem < $max_length_desc mem if score $length_desc mem matches 0 run title @a subtitle {"text": "","obfuscated": true}
execute if score $length_desc mem < $max_length_desc mem if score $length_desc mem matches 1 run title @a subtitle {"text": "你","obfuscated": true}
execute if score $length_desc mem < $max_length_desc mem if score $length_desc mem matches 2 run title @a subtitle {"text": "你说","obfuscated": true}
execute if score $length_desc mem < $max_length_desc mem if score $length_desc mem matches 3 run title @a subtitle {"text": "你说得","obfuscated": true}
execute if score $length_desc mem < $max_length_desc mem if score $length_desc mem matches 4 run title @a subtitle {"text": "你说得对","obfuscated": true}
execute if score $length_desc mem < $max_length_desc mem if score $length_desc mem matches 5 run title @a subtitle {"text": "你说得对但","obfuscated": true}
execute if score $length_desc mem < $max_length_desc mem if score $length_desc mem matches 6 run title @a subtitle {"text": "你说得对但是","obfuscated": true}
execute if score $length_desc mem < $max_length_desc mem if score $length_desc mem matches 7 run title @a subtitle {"text": "你说得对但是原","obfuscated": true}
execute if score $length_desc mem < $max_length_desc mem if score $length_desc mem matches 8 run title @a subtitle {"text": "你说得对但是原神","obfuscated": true}
execute if score $length_desc mem < $max_length_desc mem if score $length_desc mem matches 9 run title @a subtitle {"text": "你说得对但是原神是","obfuscated": true}
execute if score $length_desc mem < $max_length_desc mem if score $length_desc mem matches 10 run title @a subtitle {"text": "你说得对但是原神是由","obfuscated": true}
execute if score $length_desc mem < $max_length_desc mem if score $length_desc mem matches 11 run title @a subtitle {"text": "你说得对但是原神是由米","obfuscated": true}
execute if score $length_desc mem < $max_length_desc mem if score $length_desc mem matches 12 run title @a subtitle {"text": "你说得对但是原神是由米哈","obfuscated": true}
execute if score $length_desc mem < $max_length_desc mem if score $length_desc mem matches 13 run title @a subtitle {"text": "你说得对但是原神是由米哈游","obfuscated": true}
execute if score $length_desc mem < $max_length_desc mem if score $length_desc mem matches 14 run title @a subtitle {"text": "你说得对但是原神是由米哈游自","obfuscated": true}
execute if score $length_desc mem < $max_length_desc mem if score $length_desc mem matches 15 run title @a subtitle {"text": "你说得对但是原神是由米哈游自主","obfuscated": true}
execute if score $length_desc mem < $max_length_desc mem if score $length_desc mem matches 16 run title @a subtitle {"text": "你说得对但是原神是由米哈游自主研","obfuscated": true}
execute if score $length_desc mem < $max_length_desc mem if score $length_desc mem matches 17 run title @a subtitle {"text": "你说得对但是原神是由米哈游自主研发","obfuscated": true}
execute if score $length_desc mem < $max_length_desc mem if score $length_desc mem matches 18 run title @a subtitle {"text": "你说得对但是原神是由米哈游自主研发的","obfuscated": true}
execute if score $length_desc mem < $max_length_desc mem if score $length_desc mem matches 19 run title @a subtitle {"text": "你说得对但是原神是由米哈游自主研发的一","obfuscated": true}
execute if score $length_desc mem < $max_length_desc mem if score $length_desc mem matches 20 run title @a subtitle {"text": "你说得对但是原神是由米哈游自主研发的一款","obfuscated": true}
execute if score $length_desc mem < $max_length_desc mem if score $length_desc mem matches 21 run title @a subtitle {"text": "你说得对但是原神是由米哈游自主研发的一款全","obfuscated": true}
execute if score $length_desc mem < $max_length_desc mem if score $length_desc mem matches 22 run title @a subtitle {"text": "你说得对但是原神是由米哈游自主研发的一款全新","obfuscated": true}
execute if score $length_desc mem < $max_length_desc mem if score $length_desc mem matches 23 run title @a subtitle {"text": "你说得对但是原神是由米哈游自主研发的一款全新开","obfuscated": true}
execute if score $length_desc mem < $max_length_desc mem if score $length_desc mem matches 24 run title @a subtitle {"text": "你说得对但是原神是由米哈游自主研发的一款全新开放","obfuscated": true}
execute if score $length_desc mem < $max_length_desc mem if score $length_desc mem matches 25 run title @a subtitle {"text": "你说得对但是原神是由米哈游自主研发的一款全新开放世","obfuscated": true}
execute if score $length_desc mem < $max_length_desc mem if score $length_desc mem matches 26 run title @a subtitle {"text": "你说得对但是原神是由米哈游自主研发的一款全新开放世界","obfuscated": true}
execute if score $length_desc mem < $max_length_desc mem if score $length_desc mem matches 27 run title @a subtitle {"text": "你说得对但是原神是由米哈游自主研发的一款全新开放世界冒","obfuscated": true}
execute if score $length_desc mem < $max_length_desc mem if score $length_desc mem matches 28 run title @a subtitle {"text": "你说得对但是原神是由米哈游自主研发的一款全新开放世界冒险","obfuscated": true}
execute if score $length_desc mem < $max_length_desc mem if score $length_desc mem matches 29 run title @a subtitle {"text": "你说得对但是原神是由米哈游自主研发的一款全新开放世界冒险游","obfuscated": true}
execute if score $length_desc mem < $max_length_desc mem if score $length_desc mem matches 30 run title @a subtitle {"text": "你说得对但是原神是由米哈游自主研发的一款全新开放世界冒险游戏","obfuscated": true}

execute if score $length_desc mem = $max_length_desc mem run title @a subtitle {"selector":"@e[tag=prepare_display]"}