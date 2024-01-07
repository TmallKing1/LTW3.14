# Boss 栏显示调整
execute if score $foursec mem matches 3 if score $start_bossbar_display mem matches 1 run scoreboard players set $start_bossbar_display mem -1
execute if score $foursec mem matches 3 run scoreboard players add $start_bossbar_display mem 1