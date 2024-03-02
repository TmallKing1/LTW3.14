#as player
execute store result score #bonus_add_score mem run data get storage item:bonus item.tag.bonus_add_score

# 正常的加分
execute if score #bonus_add_score mem matches 1..10 run scoreboard players operation @s total_score += #bonus_add_score mem
execute if score #bonus_add_score mem matches 1..10 run scoreboard players operation @s total_score_disp += #bonus_add_score mem
execute if score #bonus_add_score mem matches 1..10 run tellraw @a ["",{"text": ">> ","color":"aqua","bold": true},{"selector": "@s","color":"aqua"}," 获得了 ",{"score": {"name": "#bonus_add_score","objective": "mem"},"color": "aqua"},{"text": " 积分","color": "aqua"},"，当前共有 ",{"score": {"name":"@s","objective": "total_score"},"color":"aqua"}," 积分"]

# 没有加分
execute if score #bonus_add_score mem matches 0 run tellraw @a ["",{"text": ">> ","color":"red","bold": true},{"selector": "@s","color":"red"},{"text": " 太非了，没能获得积分……","color": "red"}]

# 清零
execute if score #bonus_add_score mem matches -1 if score @s total_score matches 0 run tellraw @a [{"text":"","color":"red"},{"text": ">> ","color":"red","bold": true},{"selector": "@s","color":"white"},{"text": " 没能获得积分，因为他没有积分可供清零……"}]
execute if score #bonus_add_score mem matches -1 if score @s total_score matches 1.. run tellraw @a [{"text":"","color":"red"},{"text": ">> ","color":"red","bold": true},{"selector": "@s","color":"white"}," 的 ",{"score": {"name": "@s","objective": "total_score"}}," 积分惨遭清零……"]
execute if score #bonus_add_score mem matches -1 run scoreboard players set @s total_score 0
execute if score #bonus_add_score mem matches -1 run scoreboard players set @s total_score_disp 0

# 减半
execute if score #bonus_add_score mem matches -2 run scoreboard players operation @s total_score /= #2 mem
execute if score #bonus_add_score mem matches -2 run scoreboard players operation @s total_score_disp /= #2 mem
execute if score #bonus_add_score mem matches -2 if score @s total_score matches 0 run tellraw @a [{"text":"","color":"red"},{"text": ">> ","color":"red","bold": true},{"selector": "@s","color":"white"}," 没能获得积分，因为他没有积分可供减半……"]
execute if score #bonus_add_score mem matches -2 if score @s total_score matches 1.. run tellraw @a [{"text":"","color":"red"},{"text": ">> ","color":"red","bold": true},{"selector": "@s","color":"white"}," 的积分惨遭减半，当前共有",{"score": {"name": "@s","objective": "total_score"}}, " 积分"]

# 开方
execute if score #bonus_add_score mem matches -3 run scoreboard players operation $square mem = @s total_score
execute if score #bonus_add_score mem matches -3 run function lib:sqrt
execute if score #bonus_add_score mem matches -3 run scoreboard players operation @s total_score = $square_root mem
execute if score #bonus_add_score mem matches -3 run scoreboard players operation @s total_score_disp = $square_root mem
execute if score #bonus_add_score mem matches -3 run tellraw @a [{"text":"","color":"red"},{"text": ">> ","color":"red","bold": true},{"selector": "@s","color":"white"}, " 的积分惨遭开方，当前共有 ",{"score": {"name": "@s","objective": "total_score"}}," 积分"]

# 温迪头给予额外金粒
scoreboard players set #venti_head mem 0
execute if score #bonus_add_score mem matches 1..10 if data entity @s Inventory[{Slot: 103b}].tag.venti_head store result score #venti_head mem run data get entity @s Inventory[{Slot: 103b}].tag.venti_head 2
execute if score #venti_head mem matches 1.. run function item:bonus_item/extra_gold_venti

# 刷新显示
function item:refresh_level

# 给予进度
execute unless score #gamemode mem matches 2 if entity @s[scores={total_score=13..}] run advancement grant @s only ltw:story/score1
execute unless score #gamemode mem matches 2 if entity @s[scores={total_score=23..}] run advancement grant @s only ltw:story/score2
execute unless score #gamemode mem matches 2 if entity @s[scores={total_score=32..}] run advancement grant @s only ltw:story/score3
execute unless score #gamemode mem matches 2 if entity @s[scores={total_score=43..}] run advancement grant @s only ltw:story/score4