# 去除进度
advancement revoke @s only item:special/consume_enchanted_apple

# 计算生命值
execute if score @s mini_heart matches 1.. run scoreboard players operation @s mini_heart += @s mini_heart
execute if score @s mini_heart matches 1.. run function mini:main/player_max_health
execute if score @s mini_heart matches 1.. run tellraw @a ["",{"text": ">> ","color":"aqua","bold": true},{"selector": "@s","color":"aqua"}," 食用了附魔生命果, 生命加倍！"]

# 无生命计数：恢复生命
execute unless score @s mini_heart matches 1.. run effect give @s instant_health 1 19 true
execute unless score @s mini_heart matches 1.. run tellraw @a ["",{"text": ">> ","color":"aqua","bold": true},{"selector": "@s","color":"aqua"}," 食用了附魔生命果，生命值回满！"]

# 炸弹狂魔下判定玩家进度失败
execute if score $mini_type mem matches 4 run tag @s[tag=!hotpm_hurt] add hotpm_hurt

# $remove_resistance 信息在小游戏初始化时提供
# 去除buff
tag @s add consume_apple
schedule function item:special/clear_apple_effect 2t replace
