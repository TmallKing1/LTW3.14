# 清除 Bossbar
scoreboard players set $bossbar_type mem 0
function lib:bossbar/show

# 继续下一轮小游戏
scoreboard players set $countdown mem -1
gamemode spectator @a[team=!debugging]
scoreboard players add $round mem 1
execute unless score $round mem matches 6.. run schedule function ltw:state/3/state_enter 2t replace
execute if score $round mem matches 6.. unless score #gamemode mem matches 1 run schedule function ltw:state/2/state_enter 2t replace
execute if score $round mem matches 6.. if score #gamemode mem matches 1 run schedule function ltw:state/3/state_enter 2t replace
