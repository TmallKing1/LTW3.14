# 获得自身价值
execute store result score $value temp run data get entity @s data.value

# 随机倍率
execute store result score $random mem run random value 67..150
scoreboard players operation $value temp *= $random mem
execute store result entity @s data.value int 1 run scoreboard players operation $value temp /= #100 mem

# 更改名字
function mini:hopper/game/selling_item_init/name_each