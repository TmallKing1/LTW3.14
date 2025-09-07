# 刷新对应人数的土豆
function mini:hotpm/game/pm_give
tag @a[tag=pm_explode_last] remove pm_explode_last
tag @a remove thorns_check_mainhand
tag @a remove thorns_check_offhand
execute if score $ley_line_disorder mem matches -1 run scoreboard players reset * pm_harmless
execute if score $ley_line_disorder mem matches -1 run scoreboard players set @a[tag=pm_holding] pm_harmless 0

# 告知玩家
tellraw @a ["",{"text":">> ","color":"gold","bold": true},{"selector":"@a[tag=pm_holding]","color":"gold"}," 获得了炸弹!"]

# 土豆爆炸时间 = 存活人数 * 2.5（正常）或 1.5（幻境干扰 3） + 1（秒）
scoreboard players set $countdown_fast mem 10
execute unless score $ley_line_disorder mem matches 3 as @a[tag=mini_running] run scoreboard players add $countdown_fast mem 25
execute if score $ley_line_disorder mem matches 3 as @a[tag=mini_running] run scoreboard players add $countdown_fast mem 15
scoreboard players operation $countdown_max mem = $countdown_fast mem