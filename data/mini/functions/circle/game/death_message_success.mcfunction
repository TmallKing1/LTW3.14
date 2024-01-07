data modify storage mini:circle deathmessage set value '["",{"selector":"@p[tag=dead_player]","color":"red"}," 被 ",{"selector":"@p[tag=killer_player]","color":"green"}," 杀死了"]'

execute if score @s last_damage_type matches 0 run data modify storage mini:circle deathmessage set value '["",{"selector":"@p[tag=dead_player]","color":"red"}," 被 ",{"selector":"@p[tag=killer_player]","color":"green"}," 的粉红色美西螈杀死了"]'
execute if score @s last_damage_type matches 1 run data modify storage mini:circle deathmessage set value '["",{"selector":"@p[tag=dead_player]","color":"red"}," 被 ",{"selector":"@p[tag=killer_player]","color":"green"}," 的棕色美西螈杀死了"]'
execute if score @s last_damage_type matches 2 run data modify storage mini:circle deathmessage set value '["",{"selector":"@p[tag=dead_player]","color":"red"}," 被 ",{"selector":"@p[tag=killer_player]","color":"green"}," 的金色美西螈杀死了"]'
execute if score @s last_damage_type matches 3 run data modify storage mini:circle deathmessage set value '["",{"selector":"@p[tag=dead_player]","color":"red"}," 被 ",{"selector":"@p[tag=killer_player]","color":"green"}," 的青色美西螈杀死了"]'
execute if score @s last_damage_type matches 4 run data modify storage mini:circle deathmessage set value '["",{"selector":"@p[tag=dead_player]","color":"red"}," 被 ",{"selector":"@p[tag=killer_player]","color":"green"}," 的蓝色美西螈杀死了"]'
execute if score @s last_damage_type matches 5 run data modify storage mini:circle deathmessage set value '["",{"selector":"@p[tag=dead_player]","color":"red"}," 与 ",{"selector":"@p[tag=killer_player]","color":"green"}," 战斗时掉出了这个世界"]'

