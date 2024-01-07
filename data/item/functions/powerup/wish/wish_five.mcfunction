scoreboard players add $wish_five_count temp 1
execute store result score $random mem run random value 1001..1010
execute if score $random mem matches 1001 run function item:powerup/wish/five/00001
execute if score $random mem matches 1002 run function item:powerup/wish/five/00002
execute if score $random mem matches 1003 run function item:powerup/wish/five/00003
execute if score $random mem matches 1004 run function item:powerup/wish/five/00004
execute if score $random mem matches 1005 run function item:powerup/wish/five/00005
execute if score $random mem matches 1006 run function item:powerup/wish/five/00011
execute if score $random mem matches 1007 run function item:powerup/wish/five/00013
execute if score $random mem matches 1008 run function item:powerup/wish/five/00015
execute if score $random mem matches 1009..1010 run function item:powerup/wish/five/material
scoreboard players set @s wish_five 0