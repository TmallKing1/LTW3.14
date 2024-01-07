# 炸弹僵尸
execute if entity @s[tag=tnt_zombie] run function mini:zombie/game/tnt_zombie

# 调整血量显示
execute store result score @s zombie_health run data get entity @s Health
execute store result score @s zombie_max_health run data get entity @s Attributes[{Name: "minecraft:generic.max_health"}].Base
scoreboard players operation @s zombie_max_health /= #10 mem
scoreboard players operation @s zombie_health /= @s zombie_max_health
execute if score @s zombie_health matches 0 run data modify entity @s CustomName set value '[{"text": "僵尸 ["},{"text": "|","color": "green"},{"text":"|||||||||","color": "red"},{"text": "]"}]'
execute if score @s zombie_health matches 1 run data modify entity @s CustomName set value '[{"text": "僵尸 ["},{"text": "||","color": "green"},{"text":"||||||||","color": "red"},{"text": "]"}]'
execute if score @s zombie_health matches 2 run data modify entity @s CustomName set value '[{"text": "僵尸 ["},{"text": "|||","color": "green"},{"text":"|||||||","color": "red"},{"text": "]"}]'
execute if score @s zombie_health matches 3 run data modify entity @s CustomName set value '[{"text": "僵尸 ["},{"text": "||||","color": "green"},{"text":"||||||","color": "red"},{"text": "]"}]'
execute if score @s zombie_health matches 4 run data modify entity @s CustomName set value '[{"text": "僵尸 ["},{"text": "|||||","color": "green"},{"text":"|||||","color": "red"},{"text": "]"}]'
execute if score @s zombie_health matches 5 run data modify entity @s CustomName set value '[{"text": "僵尸 ["},{"text": "||||||","color": "green"},{"text":"||||","color": "red"},{"text": "]"}]'
execute if score @s zombie_health matches 6 run data modify entity @s CustomName set value '[{"text": "僵尸 ["},{"text": "|||||||","color": "green"},{"text":"|||","color": "red"},{"text": "]"}]'
execute if score @s zombie_health matches 7 run data modify entity @s CustomName set value '[{"text": "僵尸 ["},{"text": "||||||||","color": "green"},{"text":"||","color": "red"},{"text": "]"}]'
execute if score @s zombie_health matches 8 run data modify entity @s CustomName set value '[{"text": "僵尸 ["},{"text": "|||||||||","color": "green"},{"text":"|","color": "red"},{"text": "]"}]'
execute if score @s zombie_health matches 9 run data modify entity @s CustomName set value '[{"text": "僵尸 ["},{"text": "||||||||||","color": "green"},{"text": "]"}]'