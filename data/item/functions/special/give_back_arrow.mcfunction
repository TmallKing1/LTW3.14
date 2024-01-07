# 获得发射者
execute store result score $uuid temp run data get entity @s Owner[0]

# 返还箭
execute as @a if score @s UUID = $uuid temp run give @s tipped_arrow{item_name:'{"text":"<可返还> 极度虚弱之箭 (0:08) x3","color":"light_purple"}',is_bonus:1b,custom_potion_effects:[{amplifier:10,duration:160,id:"weakness"}],HideFlags:32767,CustomPotionColor:1524309,bonus_new:0b,bonus_return:1b,display:{Name:'{"text":"极度虚弱之箭 (0:08)","italic":false,"color":"light_purple"}'}}
execute as @a if score @s UUID = $uuid temp run title @s actionbar [{"text": "已返还未命中生物的极度虚弱之箭！","color": "green"}]
execute as @a if score @s UUID = $uuid temp at @s run function lib:sounds/hit

# 清除自身
kill @s