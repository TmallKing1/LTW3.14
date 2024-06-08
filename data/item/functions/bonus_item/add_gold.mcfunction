#as player
execute store result score #bonus_add_gold mem run data get storage item:bonus item.tag.bonus_add_gold

# 正常的加分
execute if score #bonus_add_gold mem matches 1.. run scoreboard players operation @s gold_inhand += #bonus_add_gold mem
execute if score #bonus_add_gold mem matches 1.. run tellraw @s ["",{"text": ">> ","color":"aqua","bold": true},"你获得了 ",{"score": {"name": "#bonus_add_gold","objective": "mem"},"color":"aqua"},{"text": " 金钱","color": "aqua"}]