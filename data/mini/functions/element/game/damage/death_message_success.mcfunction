data modify storage mini:element deathmessage set value '["",{"selector":"@p[tag=dead_player]","color":"red"}," 被 ",{"selector":"@p[tag=killer_player]","color":"green"}," 杀死了"]'
# 物理伤害
execute if entity @s[tag=wulidamage,tag=!chaodao,tag=!dongjie_jiechu] run data modify storage mini:element deathmessage set value '["",{"selector":"@p[tag=dead_player]","color":"red"}," 被 ",{"selector":"@p[tag=killer_player]","color":"green"}," 使用木剑刮死了"]'
execute if entity @s[tag=wulidamage,tag=chaodao,tag=!dongjie_jiechu] run data modify storage mini:element deathmessage set value '["",{"selector":"@p[tag=dead_player]","color":"red"}," 在超导的影响下被 ",{"selector":"@p[tag=killer_player]","color":"green"}," 的木剑砍死了"]'
execute if entity @s[tag=wulidamage,tag=!chaodao,tag=dongjie_jiechu] run data modify storage mini:element deathmessage set value '["",{"selector":"@p[tag=dead_player]","color":"red"}," 和冰块一起被 ",{"selector":"@p[tag=killer_player]","color":"green"}," 的木剑碎开了"]'
execute if entity @s[tag=wulidamage,tag=chaodao,tag=dongjie_jiechu] run data modify storage mini:element deathmessage set value '["",{"selector":"@p[tag=dead_player]","color":"red"}," 在超导的影响下和冰块一起被 ",{"selector":"@p[tag=killer_player]","color":"green"}," 的木剑碎开了"]'

# 风元素伤害
execute if entity @s[tag=anemodamage,tag=!kuosan] run data modify storage mini:element deathmessage set value '["",{"selector":"@p[tag=dead_player]","color":"red"}," 被 ",{"selector":"@p[tag=killer_player]","color":"green"}," 的风元素之力杀死了"]'
execute if entity @s[tag=anemodamage,tag=kuosan] run data modify storage mini:element deathmessage set value '["",{"selector":"@p[tag=dead_player]","color":"red"}," 随着 ",{"selector":"@p[tag=killer_player]","color":"green"}," 的风元素之力一起被吹散了"]'
execute if entity @s[tag=anemodamage,tag=!kuosan,tag=burst] run data modify storage mini:element deathmessage set value '["",{"selector":"@p[tag=dead_player]","color":"red"}," 被 ",{"selector":"@p[tag=killer_player]","color":"green"}," 的风元素爆发杀死了"]'

# 岩元素伤害
execute if entity @s[tag=geodamage] run data modify storage mini:element deathmessage set value '["",{"selector":"@p[tag=dead_player]","color":"red"}," 被 ",{"selector":"@p[tag=killer_player]","color":"green"}," 的岩元素之力杀死了"]'
execute if entity @s[tag=geodamage,tag=burst] run data modify storage mini:element deathmessage set value '["",{"selector":"@p[tag=dead_player]","color":"red"}," 被 ",{"selector":"@p[tag=killer_player]","color":"green"}," 的岩元素爆发杀死了"]'

# 雷元素伤害
execute if entity @s[tag=electrodamage,tag=!chaozai,tag=!chaodao] run data modify storage mini:element deathmessage set value '["",{"selector":"@p[tag=dead_player]","color":"red"}," 被 ",{"selector":"@p[tag=killer_player]","color":"green"}," 的雷元素之力杀死了"]'
execute if entity @s[tag=electrodamage,tag=chaozai,tag=!chaodao] run data modify storage mini:element deathmessage set value '["",{"selector":"@p[tag=dead_player]","color":"red"}," 在 ",{"selector":"@p[tag=killer_player]","color":"green"}," 的雷元素影响下过载崩溃"]'
execute if entity @s[tag=electrodamage,tag=!chaozai,tag=chaodao] run data modify storage mini:element deathmessage set value '["",{"selector":"@p[tag=dead_player]","color":"red"}," 因为 ",{"selector":"@p[tag=killer_player]","color":"green"}," 的雷元素而变成了超导体"]'
execute if entity @s[tag=electrodamage,tag=!chaozai,tag=!chaodao,tag=burst] run data modify storage mini:element deathmessage set value '["",{"selector":"@p[tag=dead_player]","color":"red"}," 被 ",{"selector":"@p[tag=killer_player]","color":"green"}," 的雷元素爆发杀死了"]'
execute if entity @s[tag=electrodamage,tag=chaozai,tag=!chaodao,tag=burst] run data modify storage mini:element deathmessage set value '["",{"selector":"@p[tag=dead_player]","color":"red"}," 在 ",{"selector":"@p[tag=killer_player]","color":"green"}," 的雷元素爆发下过载崩溃"]'
execute if entity @s[tag=electrodamage,tag=!chaozai,tag=chaodao,tag=burst] run data modify storage mini:element deathmessage set value '["",{"selector":"@p[tag=dead_player]","color":"red"}," 因为 ",{"selector":"@p[tag=killer_player]","color":"green"}," 的雷元素爆发而变成了超导体"]'

# 水元素伤害
execute if entity @s[tag=hydrodamage,tag=!zhengfa,tag=!dongjie] run data modify storage mini:element deathmessage set value '["",{"selector":"@p[tag=dead_player]","color":"red"}," 被 ",{"selector":"@p[tag=killer_player]","color":"green"}," 的水元素之力杀死了"]'
execute if entity @s[tag=hydrodamage,tag=zhengfa,tag=!dongjie] run data modify storage mini:element deathmessage set value '["",{"selector":"@p[tag=dead_player]","color":"red"}," 在 ",{"selector":"@p[tag=killer_player]","color":"green"}," 的水元素作用下蒸发了"]'
execute if entity @s[tag=hydrodamage,tag=!zhengfa,tag=dongjie] run data modify storage mini:element deathmessage set value '["",{"selector":"@p[tag=dead_player]","color":"red"}," 在 ",{"selector":"@p[tag=killer_player]","color":"green"}," 的水元素之力影响下变成了碎冰块"]'
execute if entity @s[tag=hydrodamage,tag=!zhengfa,tag=!dongjie,tag=burst] run data modify storage mini:element deathmessage set value '["",{"selector":"@p[tag=dead_player]","color":"red"}," 被 ",{"selector":"@p[tag=killer_player]","color":"green"}," 的水元素爆发杀死了"]'
execute if entity @s[tag=hydrodamage,tag=zhengfa,tag=!dongjie,tag=burst] run data modify storage mini:element deathmessage set value '["",{"selector":"@p[tag=dead_player]","color":"red"}," 在 ",{"selector":"@p[tag=killer_player]","color":"green"}," 的水元素爆发下蒸发了"]'

# 火元素伤害
execute if entity @s[tag=pyrodamage,tag=!zhengfa,tag=!ronghua,tag=!chaozai] run data modify storage mini:element deathmessage set value '["",{"selector":"@p[tag=dead_player]","color":"red"}," 被 ",{"selector":"@p[tag=killer_player]","color":"green"}," 的火元素之力杀死了"]'
execute if entity @s[tag=pyrodamage,tag=zhengfa,tag=!ronghua,tag=!chaozai] run data modify storage mini:element deathmessage set value '["",{"selector":"@p[tag=dead_player]","color":"red"}," 在 ",{"selector":"@p[tag=killer_player]","color":"green"}," 的火元素作用下蒸发了"]'
execute if entity @s[tag=pyrodamage,tag=!zhengfa,tag=ronghua,tag=!chaozai] run data modify storage mini:element deathmessage set value '["",{"selector":"@p[tag=dead_player]","color":"red"}," 在 ",{"selector":"@p[tag=killer_player]","color":"green"}," 的火元素作用下融化了"]'
execute if entity @s[tag=pyrodamage,tag=!zhengfa,tag=!ronghua,tag=chaozai] run data modify storage mini:element deathmessage set value '["",{"selector":"@p[tag=dead_player]","color":"red"}," 在 ",{"selector":"@p[tag=killer_player]","color":"green"}," 的火元素影响下过载崩溃"]'
execute if entity @s[tag=pyrodamage,tag=!zhengfa,tag=!ronghua,tag=!chaozai,tag=burst] run data modify storage mini:element deathmessage set value '["",{"selector":"@p[tag=dead_player]","color":"red"}," 被 ",{"selector":"@p[tag=killer_player]","color":"green"}," 的火元素爆发杀死了"]'
execute if entity @s[tag=pyrodamage,tag=zhengfa,tag=!ronghua,tag=!chaozai,tag=burst] run data modify storage mini:element deathmessage set value '["",{"selector":"@p[tag=dead_player]","color":"red"}," 在 ",{"selector":"@p[tag=killer_player]","color":"green"}," 的火元素爆发下蒸发了"]'
execute if entity @s[tag=pyrodamage,tag=!zhengfa,tag=ronghua,tag=!chaozai,tag=burst] run data modify storage mini:element deathmessage set value '["",{"selector":"@p[tag=dead_player]","color":"red"}," 在 ",{"selector":"@p[tag=killer_player]","color":"green"}," 的火元素爆发下融化了"]'
execute if entity @s[tag=pyrodamage,tag=!zhengfa,tag=!ronghua,tag=chaozai,tag=burst] run data modify storage mini:element deathmessage set value '["",{"selector":"@p[tag=dead_player]","color":"red"}," 在 ",{"selector":"@p[tag=killer_player]","color":"green"}," 的火元素爆发下过载崩溃"]'

# 超载伤害
execute if entity @s[tag=!pyrodamage,tag=chaozai] run data modify storage mini:element deathmessage set value '["",{"selector":"@p[tag=dead_player]","color":"red"}," 在与 ",{"selector":"@p[tag=killer_player]","color":"green"}," 战斗时过载崩溃"]'

# 冰元素伤害
execute if entity @s[tag=cryodamage,tag=!ronghua,tag=!chaodao,tag=!dongjie] run data modify storage mini:element deathmessage set value '["",{"selector":"@p[tag=dead_player]","color":"red"}," 被 ",{"selector":"@p[tag=killer_player]","color":"green"}," 的冰元素之力杀死了"]'
execute if entity @s[tag=cryodamage,tag=ronghua,tag=!chaodao,tag=!dongjie] run data modify storage mini:element deathmessage set value '["",{"selector":"@p[tag=dead_player]","color":"red"}," 在 ",{"selector":"@p[tag=killer_player]","color":"green"}," 的冰元素作用下融化了"]'
execute if entity @s[tag=cryodamage,tag=!ronghua,tag=chaodao,tag=!dongjie] run data modify storage mini:element deathmessage set value '["",{"selector":"@p[tag=dead_player]","color":"red"}," 因为 ",{"selector":"@p[tag=killer_player]","color":"green"}," 的冰元素而变成了超导体"]'
execute if entity @s[tag=cryodamage,tag=!ronghua,tag=!chaodao,tag=dongjie] run data modify storage mini:element deathmessage set value '["",{"selector":"@p[tag=dead_player]","color":"red"}," 在 ",{"selector":"@p[tag=killer_player]","color":"green"}," 的冰元素之力影响下变成了碎冰块"]'
execute if entity @s[tag=cryodamage,tag=!ronghua,tag=!chaodao,tag=!dongjie,tag=burst] run data modify storage mini:element deathmessage set value '["",{"selector":"@p[tag=dead_player]","color":"red"}," 被 ",{"selector":"@p[tag=killer_player]","color":"green"}," 的冰元素爆发杀死了"]'
execute if entity @s[tag=cryodamage,tag=ronghua,tag=!chaodao,tag=!dongjie,tag=burst] run data modify storage mini:element deathmessage set value '["",{"selector":"@p[tag=dead_player]","color":"red"}," 在 ",{"selector":"@p[tag=killer_player]","color":"green"}," 的冰元素爆发下融化了"]'
execute if entity @s[tag=cryodamage,tag=!ronghua,tag=chaodao,tag=!dongjie,tag=burst] run data modify storage mini:element deathmessage set value '["",{"selector":"@p[tag=dead_player]","color":"red"}," 因为 ",{"selector":"@p[tag=killer_player]","color":"green"}," 的冰元素爆发而变成了超导体"]'

# 感电伤害
execute if entity @s[tag=!electrodamage,tag=!hydrodamage,tag=gandiandamage] run data modify storage mini:element deathmessage set value '["",{"selector":"@p[tag=dead_player]","color":"red"}," 在与 ",{"selector":"@p[tag=killer_player]","color":"green"}," 战斗时携带了超量的电流"]'
execute if entity @s[tag=electrodamage,tag=!hydrodamage,tag=gandiandamage] run data modify storage mini:element deathmessage set value '["",{"selector":"@p[tag=dead_player]","color":"red"}," 在潮湿时被 ",{"selector":"@p[tag=killer_player]","color":"green"}," 的雷元素之力电死了"]'
execute if entity @s[tag=!electrodamage,tag=hydrodamage,tag=gandiandamage] run data modify storage mini:element deathmessage set value '["",{"selector":"@p[tag=dead_player]","color":"red"}," 在触电时因 ",{"selector":"@p[tag=killer_player]","color":"green"}," 的水元素之力而死"]'

execute if entity @s[tag=outofarea] run data modify storage mini:element deathmessage set value '["",{"selector":"@p[tag=dead_player]","color":"red"}," 在与 ",{"selector":"@p[tag=killer_player]","color":"green"}," 战斗时润出了这个世界"]'