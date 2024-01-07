# 抽奖
scoreboard players set $lucky_claimed mem 0
execute store result score $lucky_777_A mem run random value 0..9
execute store result score $lucky_777_B mem run random value 0..9
execute store result score $lucky_777_C mem run random value 0..9
scoreboard players add @s 777 1

# 777 / 0.1% 大成功：获得 15 金锭 与 1 个魔法符咒
execute if score $lucky_777_A mem matches 7 if score $lucky_777_B mem matches 7 if score $lucky_777_C mem matches 7 run function ltw:state/0/roll_777/super_win

# 000 / 0.1% 大失败：清零
execute if score $lucky_claimed mem matches 0 if score $lucky_777_A mem matches 0 if score $lucky_777_B mem matches 0 if score $lucky_777_C mem matches 0 run function ltw:state/0/roll_777/super_lose

# 三个相同数字 / 0.8% 小成功：获得 5 金锭 与 1 个魔法符咒
execute if score $lucky_claimed mem matches 0 if score $lucky_777_A mem = $lucky_777_B mem if score $lucky_777_A mem = $lucky_777_C mem run function ltw:state/0/roll_777/minor_win

# 00* 0*0 *00 / 2.7% 小失败：减半
execute if score $lucky_claimed mem matches 0 if score $lucky_777_A mem matches 0 if score $lucky_777_B mem matches 0 unless score $lucky_777_C mem matches 0 run function ltw:state/0/roll_777/minor_lose
execute if score $lucky_claimed mem matches 0 if score $lucky_777_A mem matches 0 unless score $lucky_777_B mem matches 0 if score $lucky_777_C mem matches 0 run function ltw:state/0/roll_777/minor_lose
execute if score $lucky_claimed mem matches 0 unless score $lucky_777_A mem matches 0 if score $lucky_777_B mem matches 0 if score $lucky_777_C mem matches 0 run function ltw:state/0/roll_777/minor_lose

# *77 7*7 77* / 2.7%：获得 2 金锭
execute if score $lucky_claimed mem matches 0 if score $lucky_777_A mem matches 7 if score $lucky_777_B mem matches 7 unless score $lucky_777_C mem matches 7 run function ltw:state/0/roll_777/win2
execute if score $lucky_claimed mem matches 0 if score $lucky_777_A mem matches 7 unless score $lucky_777_B mem matches 7 if score $lucky_777_C mem matches 7 run function ltw:state/0/roll_777/win2
execute if score $lucky_claimed mem matches 0 unless score $lucky_777_A mem matches 7 if score $lucky_777_B mem matches 7 if score $lucky_777_C mem matches 7 run function ltw:state/0/roll_777/win2

# **7 *7* 7** / 24.3%：获得 2 金粒
execute if score $lucky_claimed mem matches 0 if score $lucky_777_A mem matches 7 unless score $lucky_777_B mem matches 7 unless score $lucky_777_C mem matches 7 run function ltw:state/0/roll_777/win1
execute if score $lucky_claimed mem matches 0 unless score $lucky_777_A mem matches 7 if score $lucky_777_B mem matches 7 unless score $lucky_777_C mem matches 7 run function ltw:state/0/roll_777/win1
execute if score $lucky_claimed mem matches 0 unless score $lucky_777_A mem matches 7 unless score $lucky_777_B mem matches 7 if score $lucky_777_C mem matches 7 run function ltw:state/0/roll_777/win1

# 其它 / 不返还
execute if score $lucky_claimed mem matches 0 run function ltw:state/0/roll_777/lose