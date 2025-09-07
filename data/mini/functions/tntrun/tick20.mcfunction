# 时间
scoreboard players add 游戏已进行时间 layer 1

# 进度判断
execute unless score $ley_line_disorder mem matches -1 run clone 1008 33 2008 1030 33 2030 1000 4 2000
execute unless score $ley_line_disorder mem matches -1 store result score #tnt mem run fill 1000 4 2000 1022 4 2022 air replace #mini:tntrun_floor
execute unless score $ley_line_disorder mem matches -1 if score #tnt mem matches 1..25 unless score #gamemode mem matches 2 run advancement grant @a[tag=mini_running,scores={layer=4}] only ltw:parkour/tnt3