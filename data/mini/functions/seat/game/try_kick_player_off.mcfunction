execute store result score $random mem run random value 1..10
execute unless score $ley_line_disorder mem matches 2..3 if score $random mem matches 1 run function mini:seat/game/player_kicked_off
execute if score $ley_line_disorder mem matches 2 if score $random mem matches 1..2 run function mini:seat/game/player_kicked_off
execute if score $ley_line_disorder mem matches 3 if entity @a[tag=seat_damage_dealt,tag=mc_angry] if score $random mem matches 1..3 run function mini:seat/game/player_kicked_off
execute if score $ley_line_disorder mem matches 3 unless entity @a[tag=seat_damage_dealt,tag=mc_angry] if score $random mem matches 1 run function mini:seat/game/player_kicked_off
execute if score $ley_line_disorder mem matches -1 unless score $random mem matches 1 run function mini:seat/game/player_shiheng