scoreboard players remove $lld_display_countdown mem 1
execute if score $lld_display_countdown mem matches 0 if score $bossbar_display_mode mem matches 1 run scoreboard players set $bossbar_display_mode mem -2
execute if score $lld_display_countdown mem matches 0 if score $bossbar_display_mode mem matches 0 run scoreboard players set $bossbar_display_mode mem -1
execute if score $lld_display_countdown mem matches 0 run scoreboard players add $bossbar_display_mode mem 2
execute if score $lld_display_countdown mem matches 0 run scoreboard players set $lld_display_countdown mem 10