scoreboard players add $wish_four_count temp 1
execute store result score $random mem run random value 0..1
execute if score $random mem matches 0 run function item:powerup/wish/wish_four_head
execute if score $random mem matches 1 run function item:powerup/wish/wish_four_pattern
scoreboard players set @s wish_four 0