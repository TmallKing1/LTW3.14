# as player
execute store result score #bonus_essence mem run data get storage item:bonus item.tag.bonus_essence

# 更改积分
execute unless score $test_mode mem matches 1 run scoreboard players operation @s primogem += #bonus_essence mem

# 显示提示
execute unless score $test_mode mem matches 1 if score #bonus_essence mem matches 64 run tellraw @a ["",{"text": ">> ","color":"aqua","bold": true},{"selector": "@s","color":"aqua"}," 获得了 ",{"color":"gold","text": "魔法符咒"}]
execute unless score $test_mode mem matches 1 if score #bonus_essence mem matches ..63 run tellraw @s ["",{"text": ">> ","color":"aqua","bold": true},"你找到了 ",{"score": {"name": "#bonus_essence","objective": "mem"},"color":"aqua"},{"text": " 魔法精华"}]
execute if score $test_mode mem matches 1 if score #bonus_essence mem matches 64 run tellraw @a ["",{"text": ">> ","color":"red","bold": true},{"selector": "@s","color":"red"},{"text":" 没有获得魔法符咒，因为测试模式已开启","color": "red"}]
execute if score $test_mode mem matches 1 if score #bonus_essence mem matches ..63 run tellraw @s ["",{"text": ">> ","color":"red","bold": true},{"text": "你没有获得魔法精华，因为测试模式已开启","color": "red"}]