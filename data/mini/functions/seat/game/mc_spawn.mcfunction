summon minecart 1016.0 36 10016.0 {Tags:["seat_mc"],Invulnerable:1b,Glowing:1b}
scoreboard players remove $minecart_count mem 1
execute if score $minecart_count mem matches 1.. run function mini:seat/game/mc_spawn