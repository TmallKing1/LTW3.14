#as player
execute store result score #bonus_add_cash mem run data get storage item:bonus item.tag.bonus_add_cash

# 正常的加分
execute if score #bonus_add_cash mem matches 1.. run scoreboard players operation @s cash += #bonus_add_cash mem
execute if score #bonus_add_cash mem matches 1.. run tellraw @a ["",{"text": ">> ","color":"aqua","bold": true},{"selector": "@s","color":"aqua"}," 获得了 ",{"score": {"name":"#bonus_add_cash","objective": "mem"},"color":"aqua"},{"text": " 信用点","color":"aqua"},", 当前共有 ",{"score": {"name": "@s","objective": "cash"}}, " 信用点"]