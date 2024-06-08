# 归零boss条
scoreboard players set $period_lld_warned mem 0
scoreboard players set $period_lld mem 0
bossbar set mini:lld color pink
bossbar set mini:lld name [{"text": "| 幻境不稳定度 |","color": "#EC00B8"}]
bossbar set mini:lld value 0

# 触发幻境干扰
execute if score $mini_type mem matches 101..104 if score $ley_line_disorder mem matches 4 run function mini:main/lld/events/water
execute if score $mini_type mem matches 104 if score $ley_line_disorder mem matches 3 run function mini:hopper/game/lld/3_disorder
execute if score $mini_type mem matches 201 if score $ley_line_disorder mem matches 5 run function mini:ass/game/lld/5_summon
execute if score $mini_type mem matches 302 if score $ley_line_disorder mem matches 1 run function mini:element/game/lld/1_enhance