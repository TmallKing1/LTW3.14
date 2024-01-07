scoreboard players set $axolotl_count mem 0
scoreboard players set $axolotl_max mem 8
scoreboard players operation $axolotl_max mem *= $player_alive mem
execute as @e[type=axolotl,tag=circle_entity] run scoreboard players add $axolotl_count mem 1
execute if score $axolotl_count mem < $axolotl_max mem positioned 999.0 11.0 17022.0 run function mini:circle/game/summon_axolotl
execute if score $axolotl_count mem < $axolotl_max mem positioned 999.0 11.0 17074.0 run function mini:circle/game/summon_axolotl