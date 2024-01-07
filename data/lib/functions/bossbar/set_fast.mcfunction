# 炸弹狂魔的幻境干扰
execute unless score $mini_type mem matches 3 store result bossbar mini:red value run scoreboard players get $countdown_fast mem
execute if score $mini_type mem matches 3 unless score $ley_line_disorder mem matches 1 store result bossbar mini:red value run scoreboard players get $countdown_fast mem
execute if score $mini_type mem matches 3 if score $ley_line_disorder mem matches 1 run bossbar set mini:red value 0

execute store result bossbar mini:yellow value run scoreboard players get $countdown_fast mem
execute store result bossbar mini:green value run scoreboard players get $countdown_fast mem
execute store result bossbar mini:blue value run scoreboard players get $countdown_fast mem