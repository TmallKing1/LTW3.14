# 计算奖励
scoreboard players set $reward mem 0
scoreboard players set $base mem 1
execute if score $base mem < @s damage_dealt_back run function mini:attack/game/calc_reward_recu