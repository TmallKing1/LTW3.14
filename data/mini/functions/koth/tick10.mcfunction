# 给予红区玩家能量值
#execute unless score $ley_line_disorder mem matches 1 if score $countdown mem matches 61.. as @a[team=playing,tag=mini_running] at @s if block ~ 9 ~ red_concrete run scoreboard players add @s power_count 1
#execute unless score $ley_line_disorder mem matches 1 if score $countdown mem matches ..60 as @a[team=playing,tag=mini_running] at @s if block ~ 9 ~ red_concrete run scoreboard players add @s power_count 2
execute unless score $ley_line_disorder mem matches 1 if score $countdown mem matches 61.. as @a[team=playing,tag=mini_running] at @s if block ~ 9 ~ red_mushroom_block run scoreboard players add @s power_count 1
execute unless score $ley_line_disorder mem matches 1 if score $countdown mem matches ..60 as @a[team=playing,tag=mini_running] at @s if block ~ 9 ~ red_mushroom_block run scoreboard players add @s power_count 2
