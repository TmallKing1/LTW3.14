# 设置玩家分数
scoreboard players set @s countdown_fast 20
scoreboard players reset @s TNTUse

# 清除TNT以防bug
clear @s tnt{game_item:1b}

# 幻境干扰
execute if score $ley_line_disorder mem matches 1 run effect give @s speed 1 4