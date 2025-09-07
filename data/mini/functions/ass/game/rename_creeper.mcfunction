tag @s add rename_target
data modify block 0 1 0 front_text.messages[0] set value '[{"selector":"@a[tag=rename_target]"},{"text":" 的苦力怕"}]'
execute as @e[type=creeper,limit=1,sort=nearest,tag=!complete_rename] run data modify entity @s CustomName set from block 0 1 0 front_text.messages[0]
execute as @e[type=creeper,limit=1,sort=nearest,tag=!complete_rename] run tag @s add complete_rename
tag @a remove rename_target