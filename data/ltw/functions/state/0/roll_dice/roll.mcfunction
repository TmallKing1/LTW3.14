
# 丢骰子
execute store result score $random mem run random value 1..20

# 20 / 5% 大成功：获得 1 金块 与 1 个魔法符咒
execute if score $random mem matches 20 run function ltw:state/0/roll_dice/super_win

# 19 / 5% 大失败：归零
execute if score $random mem matches 19 run function ltw:state/0/roll_dice/super_lose

# 18 / 5%：获得 3 金锭
execute if score $random mem matches 18 run function ltw:state/0/roll_dice/win3

# 15-17 / 15%：获得 2 金锭
execute if score $random mem matches 15..17 run function ltw:state/0/roll_dice/win2

# 10-14 / 25%：返还 1 金锭
execute if score $random mem matches 10..14 run function ltw:state/0/roll_dice/win1

# 1-9 / 45%：不返还
execute if score $random mem matches 1..9 run function ltw:state/0/roll_dice/lose
