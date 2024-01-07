tag @s add seat_damage_dealt
# 如果玩家在抢座游戏中打到人，才执行下一步
execute if entity @a[tag=in_minecart,tag=seat_damage_taken] as @a[tag=in_minecart,tag=seat_damage_taken,limit=1] run function mini:seat/game/try_kick_player_off

# 结束伤害判断
tag @a remove seat_damage_dealt
tag @a remove seat_damage_taken
