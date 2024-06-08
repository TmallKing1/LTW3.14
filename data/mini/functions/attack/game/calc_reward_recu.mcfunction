# 计算奖励
scoreboard players add $reward mem 1
scoreboard players operation $base mem *= #4 mem
execute if score $base mem < @s damage_dealt_back run function mini:attack/game/calc_reward_recu
scoreboard players operation @s damage_dealt_back = $reward mem