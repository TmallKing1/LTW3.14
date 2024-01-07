# 决定生成物品的类型
execute store result score $random mem run random value 1..4

execute if score $random mem matches 1 run summon item 1028.5 -30 19028.5 {Item:{id:"minecraft:red_dye",Count:1},CustomName:'{"text": "攻击力+","color": "red"}',CustomNameVisible:1b,Tags:["power_entity","atk_boost_item","temp_item"],PickupDelay:32767,Age:-32768,NoGravity:1b}
execute unless score $random mem matches 1 run summon item 1028.5 -30 19028.5 {Item:{id:"minecraft:heart_of_the_sea",Count:1},CustomName:'{"text": "能量球","color": "aqua"}',CustomNameVisible:1b,Tags:["power_entity","power_add_item","temp_item"],PickupDelay:32767,Age:-32768,NoGravity:1b}

function mini:power/game/spread_item

tag @e remove temp_item