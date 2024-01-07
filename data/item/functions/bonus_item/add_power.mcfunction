#as player
execute store result score #bonus_add_power mem run data get storage item:bonus item.tag.bonus_add_power

# 正常的加分
execute if score #bonus_add_power mem matches 1..100 run scoreboard players operation @s power_count += #bonus_add_power mem
execute if score #bonus_add_power mem matches 1..100 run tellraw @a ["",{"text": ">> ","color":"aqua","bold": true},{"selector": "@s","color":"aqua"}," 获得了 ",{"score": {"name":"#bonus_add_power","objective": "mem"},"color":"aqua"},{"text": " 能量值","color":"aqua"},", 当前共有 ",{"score": {"name": "@s","objective": "power_count"}}, " 能量值"]

# 没有加分
execute if score #bonus_add_power mem matches 0 run tellraw @a ["",{"text": ">> ","color":"red","bold": true},{"selector": "@s","color":"red"},{"text":" 太非了，没能获得能量……","color": "red"}]

# 加倍
execute if score #bonus_add_power mem matches 101.. run scoreboard players operation @s power_count *= #2 mem
execute if score #bonus_add_power mem matches 101.. if score @s power_count matches 0 run tellraw @a [{"text":"","color":"red"},{"text": ">> ","color":"red","bold": true},{"selector": "@s","color":"white"}," 没能获得能量值，因为他没有能量值可供加倍……"]
execute if score #bonus_add_power mem matches 101.. if score @s power_count matches 1.. run tellraw @a [{"text":"","color":"aqua"},{"text": ">> ","color":"aqua","bold": true},{"selector": "@s","color":"white"}," 的能量值加倍，当前共有 ",{"score": {"name": "@s","objective": "power_count"}}, " 能量值"]

# 减半
execute if score #bonus_add_power mem matches ..-1 run scoreboard players operation @s power_count /= #2 mem
execute if score #bonus_add_power mem matches ..-1 if score @s power_count matches 0 run tellraw @a [{"text":"","color":"red"},{"text": ">> ","color":"red","bold": true},{"selector": "@s","color":"white"}," 没能获得能量值，因为他没有能量值可供减半……"]
execute if score #bonus_add_power mem matches ..-1 if score @s power_count matches 1.. run tellraw @a [{"text":"","color":"red"},{"text": ">> ","color":"red","bold": true},{"selector": "@s","color":"white"}," 的能量值惨遭减半，当前共有 ",{"score": {"name": "@s","objective": "power_count"}}, " 能量值"]

# 刷新显示
function item:refresh_level

# 给予进度
#execute if entity @s[scores={power_count=10..}] run advancement grant @s only ltw:story/score1
#execute if entity @s[scores={power_count=18..}] run advancement grant @s only ltw:story/score2
#execute if entity @s[scores={power_count=26..}] run advancement grant @s only ltw:story/score3
#execute if entity @s[scores={power_count=34..}] run advancement grant @s only ltw:story/score4