data modify storage mini:circle deathmessage set value '["",{"selector":"@p[tag=dead_player]","color":"red"}," 意外地死亡了"]'

execute if score @s last_damage_type matches 5 run data modify storage mini:circle deathmessage set value '["",{"selector":"@p[tag=dead_player]","color":"red"}," 掉出了这个世界"]'