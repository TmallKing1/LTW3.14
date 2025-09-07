execute unless score #gamemode mem matches 2 if score $round mem matches 6.. run schedule function ltw:main/game_end 10t
execute unless score #gamemode mem matches 2 if score $round mem matches ..5 run schedule function ltw:state/7/continue_gameparty 10t
execute if score #gamemode mem matches 2 if score $round mem matches ..1 run schedule function ltw:main/game_end 10t
execute if score #gamemode mem matches 2 if score $round mem matches 2.. run schedule function ltw:state/7/continue_gameparty 10t
scoreboard players set $end_selection mem 2