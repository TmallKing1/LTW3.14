# 获取数组内的数
execute store result score $value mem run function lib:arrays/get

data modify storage lib:arrays TargetArray set from storage ltw:mini suggested_games
execute store result score $bl mem run function lib:arrays/check_in
execute if score $bl mem matches 0 run scoreboard players add $legacy_count mem 1
execute if score $bl mem matches 1 run scoreboard players add $index mem 1
execute if score $legacy_count mem matches 2.. run function lib:arrays/remove
execute if score $bl mem matches 0 unless score $legacy_count mem matches 2.. run scoreboard players add $index mem 1

execute unless score $index mem matches 5.. run function ltw:state/3/loop_remove