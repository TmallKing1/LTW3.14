scoreboard players add $wish_three_count temp 1
execute store result score $random mem run random value 1001..1005
execute if score $random mem matches 1001 run function item:powerup/wish/three/1g
execute if score $random mem matches 1002 run function item:powerup/wish/three/2g
execute if score $random mem matches 1003 run function item:powerup/wish/three/3g
execute if score $random mem matches 1004 run function item:powerup/wish/three/4g
execute if score $random mem matches 1005 run function item:powerup/wish/three/5g