#as player
execute store result storage ltw:random random_max int 1 run data get storage item:bonus item.tag.bonus_reverse_score.max
data modify storage ltw:random random_min set value 0
execute if data storage item:bonus item.tag.bonus_reverse_score{no_zero: 1b} run data modify storage ltw:random random_min set value 1
function lib:random with storage ltw:random
execute if data storage ltw:random {random_min:1,random_max:1} run scoreboard players set $random mem 1
scoreboard players operation #bonus_add_score mem = $random mem
scoreboard players operation #bonus_add_score_disp mem = $random mem
execute store result score $reverse_score mem run data get storage item:bonus item.tag.bonus_reverse_score.reverse
execute store result score $random mem run random value 1..100
execute if score $random mem <= $reverse_score mem run scoreboard players operation #bonus_add_score mem *= #-1 mem
scoreboard players operation @s total_score += #bonus_add_score mem
scoreboard players operation @s total_score_disp += #bonus_add_score mem

# 正常的加分
execute if score #bonus_add_score mem matches 1..10 run tellraw @a ["",{"text": ">> ","color":"aqua","bold": true},{"selector": "@s","color":"aqua"}," 获得了 ",{"score": {"name": "#bonus_add_score_disp","objective": "mem"},"color": "aqua"},{"text": " 积分","color": "aqua"},"，当前共有 ",{"score": {"name":"@s","objective": "total_score"},"color":"aqua"}," 积分"]

# 没有加分
execute if score #bonus_add_score mem matches 0 run tellraw @a ["",{"text": ">> ","color":"red","bold": true},{"selector": "@s","color":"red"},{"text": " 太非了，没能获得积分……","color": "red"}]

# 减分
execute if score #bonus_add_score mem matches -10..-1 run tellraw @a ["",{"text": ">> ","color":"red","bold": true},{"selector": "@s","color":"red"},{"text":" 失去了 ","color": "red"},{"score": {"name": "#bonus_add_score_disp","objective": "mem"},"color": "red"},{"text": " 积分","color": "red"},{"text":"，当前共有 ","color": "red"},{"score": {"name":"@s","objective": "total_score"},"color":"red"},{"text":" 积分","color": "red"}]

# 温迪头给予额外金粒
scoreboard players set #venti_head mem 0
execute if score #bonus_add_score mem matches 1..10 if data entity @s Inventory[{Slot: 103b}].tag.venti_head store result score #venti_head mem run data get entity @s Inventory[{Slot: 103b}].tag.venti_head 2
execute if score #venti_head mem matches 1.. run function item:bonus_item/extra_gold_venti

# 刷新显示
function item:refresh_level

# 给予进度
execute unless score #gamemode mem matches 3 if entity @s[scores={total_score=13..}] run advancement grant @s only ltw:story/score1
execute unless score #gamemode mem matches 3 if entity @s[scores={total_score=23..}] run advancement grant @s only ltw:story/score2
execute unless score #gamemode mem matches 3 if entity @s[scores={total_score=32..}] run advancement grant @s only ltw:story/score3
execute unless score #gamemode mem matches 3 if entity @s[scores={total_score=43..}] run advancement grant @s only ltw:story/score4