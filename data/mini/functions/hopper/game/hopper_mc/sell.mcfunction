tag @e[type=marker] remove sell_item_marker
execute as @e[type=marker,tag=sell_entry] run function mini:hopper/game/hopper_mc/test_marker_each
execute if entity @e[type=marker,tag=sell_item_marker] run function mini:hopper/game/hopper_mc/sell_success_single