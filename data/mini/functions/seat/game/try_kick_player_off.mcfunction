execute store result score $random mem run random value 1..10
execute unless score $ley_line_disorder mem matches 2 if score $random mem matches 1 run function mini:seat/game/player_kicked_off
execute if score $ley_line_disorder mem matches 2 if score $random mem matches 1..2 run function mini:seat/game/player_kicked_off