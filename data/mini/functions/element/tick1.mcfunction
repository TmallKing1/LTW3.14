# 冻结处理
execute as @a[x=1001,y=63,z=15001,dx=44,dy=27,dz=44,team=playing,tag=mini_running] run function mini:element/game/element/reaction_dongjie_apply

# 伤害免疫
scoreboard players remove @a[tag=mini_running,scores={damage_cd=1..}] damage_cd 1

# 清理鱼钩
execute as @e[type=fishing_bobber] at @s if block ~ ~-0.25 ~ water run kill

# 静息治疗处理
execute as @a[tag=mini_running,gamemode=!spectator] run function mini:element/game/player/healing

# 清除标签防止bug
tag @a remove element_damage_taken