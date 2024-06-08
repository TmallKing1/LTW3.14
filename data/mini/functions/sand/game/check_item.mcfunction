# 金粒
execute store result score $item_count mem run clear @s gold_nugget{sand_item: 1b}
execute if score $item_count mem matches 1.. at @s run function lib:sounds/hit
scoreboard players operation $item_count mem *= #2 mem
execute if score $ley_line_disorder mem matches 3 unless score @s gold_inhand matches 1.. run scoreboard players operation $item_count mem *= #2 mem
execute if score $ley_line_disorder mem matches 3 if score @s gold_inhand matches 1.. run scoreboard players operation $item_count mem /= #2 mem
execute if score $item_count mem matches 1.. run return run scoreboard players operation @s gold_inhand += $item_count mem

# 粗金
execute store result score $item_count mem run clear @s raw_gold{sand_item: 1b}
execute if score $item_count mem matches 1.. at @s run function lib:sounds/hit
scoreboard players operation $item_count mem *= #4 mem
execute if score $ley_line_disorder mem matches 3 unless score @s gold_inhand matches 1.. run scoreboard players operation $item_count mem *= #2 mem
execute if score $ley_line_disorder mem matches 3 if score @s gold_inhand matches 1.. run scoreboard players operation $item_count mem /= #2 mem
execute if score $item_count mem matches 1.. run return run scoreboard players operation @s gold_inhand += $item_count mem

# 金锭
execute store result score $item_count mem run clear @s gold_ingot{sand_item: 1b}
execute if score $item_count mem matches 1.. at @s run function lib:sounds/hit
scoreboard players operation $item_count mem *= #8 mem
execute if score $ley_line_disorder mem matches 3 unless score @s gold_inhand matches 1.. run scoreboard players operation $item_count mem *= #2 mem
execute if score $ley_line_disorder mem matches 3 if score @s gold_inhand matches 1.. run scoreboard players operation $item_count mem /= #2 mem
execute if score $item_count mem matches 1.. run return run scoreboard players operation @s gold_inhand += $item_count mem

# 金块
execute store result score $item_count mem run clear @s gold_block{sand_item: 1b}
execute if score $item_count mem matches 1.. at @s run function lib:sounds/hit
scoreboard players operation $item_count mem *= #14 mem
execute if score $ley_line_disorder mem matches 3 unless score @s gold_inhand matches 1.. run scoreboard players operation $item_count mem *= #2 mem
execute if score $ley_line_disorder mem matches 3 if score @s gold_inhand matches 1.. run scoreboard players operation $item_count mem /= #2 mem
execute if score $item_count mem matches 1.. run return run scoreboard players operation @s gold_inhand += $item_count mem

# 箱子
execute store result score $item_count mem run clear @s chest{sand_item: 1b}
execute if score $item_count mem matches 1.. at @s run function mini:sand/game/new_item