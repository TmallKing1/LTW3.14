# 设置玩家分数
scoreboard players set @s countdown_fast 3
scoreboard players reset @s use_snowball
scoreboard players reset @s vase_broken_dig

# 清除雪球以防bug
clear @s snowball{game_item:1b}