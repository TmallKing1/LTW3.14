# 判断静息治疗的条件
scoreboard players set $can_heal mem 1

# 玩家不在移动中
execute if score @s walk matches 1.. run scoreboard players set $can_heal mem 0
execute if score @s sneak matches 1.. run scoreboard players set $can_heal mem 0

# 玩家不在下落中
execute if score @s fall matches 1.. run scoreboard players set $can_heal mem 0

# 玩家未木剑
execute if score @s attack matches 1.. run scoreboard players set $can_heal mem 0

# 玩家正在潜行中
execute unless score @s sneak_time matches 1.. run scoreboard players set $can_heal mem 0

# 若条件符合，则累计时间
execute if score $can_heal mem matches 1 run scoreboard players operation @s sneak_time_temp += @s sneak_time

# 依据累计时间给予效果
execute if score @s sneak_time_temp matches 30 run effect give @s regeneration 100 1
execute if score @s sneak_time_temp matches 30 run function mini:element/game/marker/find
execute if score @s sneak_time_temp matches 30 run data modify entity @e[tag=found_marker,limit=1] data.element_attach set value 0
execute if score @s sneak_time_temp matches 60 run effect give @s regeneration 100 2
execute if score @s sneak_time_temp matches 100 run effect give @s regeneration 100 3
execute if score @s sneak_time_temp matches 150 run effect give @s regeneration 100 4

# 若条件不符合，则清除缓存与效果
execute if score $can_heal mem matches 0 run scoreboard players set @s sneak_time_temp 0
execute if score $can_heal mem matches 0 run effect clear @s regeneration

# 清除所有计数器
scoreboard players set @s walk 0
scoreboard players set @s sneak 0
scoreboard players set @s fall 0
scoreboard players set @s attack 0
scoreboard players set @s sneak_time 0