# 去除进度
advancement revoke @s only mini:use_potion

# 最终轮喝药水
execute if score $state mem matches 5 if score $mini_type mem matches 101 if score $ley_line_disorder mem matches 2 run function mini:iron/game/lld/2_disorder
execute if score $state mem matches 5 if score $mini_type mem matches 103 if score $ley_line_disorder mem matches 2 run function mini:diamond/game/lld/2_disorder
execute if score $state mem matches 5 if score $mini_type mem matches 104 if score $ley_line_disorder mem matches 2 run function mini:hopper/game/lld/2_disorder