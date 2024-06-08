# 获取自己的标记
function mini:element/game/marker/find

# 若自己的标记有冻结标签
execute if entity @e[tag=found_marker,limit=1,tag=dongjie,tag=!respawning] run effect give @s slowness infinite 10 true
execute if entity @e[tag=found_marker,limit=1,tag=dongjie,tag=!respawning] run effect give @s jump_boost infinite 128 true
execute if entity @e[tag=found_marker,limit=1,tag=dongjie,tag=!respawning] run tp @s @e[tag=found_marker,limit=1,tag=dongjie]

# 若没有或倒计时为零
execute as @e[tag=found_marker,limit=1,tag=dongjie,scores={countdown_dongjie=..0}] run tag @s remove dongjie
execute unless entity @e[tag=found_marker,limit=1,tag=dongjie] run effect clear @s slowness
execute unless entity @e[tag=found_marker,limit=1,tag=dongjie] run effect clear @s jump_boost