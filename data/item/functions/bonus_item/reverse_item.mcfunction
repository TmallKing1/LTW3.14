#as player
data modify storage item:bonus reverse_item set from storage item:bonus item.tag.bonus_reverse_item
data remove storage item:bonus item.tag.bonus_reverse_item
execute store result score $item.random.count mem run data get storage item:bonus reverse_item.count
execute store result score $item.random.white mem run data get storage item:bonus reverse_item.white
execute store result score $item.random.green mem run data get storage item:bonus reverse_item.green
execute store result score $item.random.blue mem run data get storage item:bonus reverse_item.blue
execute store result score $item.random.purple mem run data get storage item:bonus reverse_item.purple
scoreboard players operation $item.random.green mem += $item.random.white mem
scoreboard players operation $item.random.blue mem += $item.random.green mem
scoreboard players operation $item.random.purple mem += $item.random.blue mem
execute store result storage ltw:random random_max int 1 run scoreboard players get $item.random.purple mem
data modify storage ltw:random random_min set value 1
function item:bonus_item/reverse_random_item