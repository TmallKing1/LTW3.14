# 对单个玩家的处理（如果玩家中途加入就会执行此函数）
title @s clear
title @s actionbar ""

# 状态效果
effect clear @s
effect give @s saturation infinite 0 true

# 显示小游戏介绍
function mini:main/player_intro

# 播放音效
execute at @s run function lib:sounds/travel

# mcc
execute at @s run playsound mcc:games.global.roundestablisher player @s
execute at @s run playsound mcc:music.global.gameintro player @s

# 自由旁观
gamemode spectator @s[team=!debugging]
spectate
