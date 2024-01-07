# 物理伤害
execute if entity @s[tag=wulidamage] run data modify storage mini:element deathmessage set value '["",{"selector":"@p[tag=dead_player]","color":"red"}," 意外地死亡了"]'

# 火元素伤害
execute if entity @s[tag=pyrodamage,tag=!chaozai] run data modify storage mini:element deathmessage set value '["",{"selector":"@p[tag=dead_player]","color":"red"}," 在火焰中看到了希望"]'
execute if entity @s[tag=pyrodamage,tag=chaozai] run data modify storage mini:element deathmessage set value '["",{"selector":"@p[tag=dead_player]","color":"red"}," 在火焰中爆炸了"]'

# 超载伤害
execute if entity @s[tag=!pyrodamage,tag=chaozai] run data modify storage mini:element deathmessage set value '["",{"selector":"@p[tag=dead_player]","color":"red"}," 超载而爆炸了"]'

# 感电伤害
execute if entity @s[tag=gandiandamage] run data modify storage mini:element deathmessage set value '["",{"selector":"@p[tag=dead_player]","color":"red"}," 受到了过强的电流"]'

# 出界伤害
execute if entity @s[tag=outofarea] run data modify storage mini:element deathmessage set value '["",{"selector":"@p[tag=dead_player]","color":"red"}," 润出了这个世界"]'