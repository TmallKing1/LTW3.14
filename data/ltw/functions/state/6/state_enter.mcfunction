# 要求系统进入状态 6（小游戏结束）
scoreboard players set $state mem 6
execute as @a[team=!debugging] run function ltw:state/6/player_enter

# HUD
scoreboard objectives setdisplay below_name total_score_disp
scoreboard objectives setdisplay sidebar total_score
scoreboard objectives setdisplay list total_score_disp
scoreboard players set $bossbar_type mem 0
function lib:bossbar/show

# 伤害管理
gamerule naturalRegeneration true

# 清理残留实体
function mini:main/kill_remaining_entity

# 初始化倒计时
scoreboard players set $countdown mem 4

team modify playing nametagVisibility always

# 特殊模式直接结束
execute if score $round mem matches 0 run return 0
execute if score $test_mode mem matches 1 unless score #gamemode mem matches 2 if score $round mem matches 6 run return 0

# 生成地图
setblock 0 10 2000 minecraft:structure_block{mode:"LOAD",name:"ltw:select"}
setblock 0 11 2000 minecraft:redstone_block
setblock 0 10 2000 air

# 让地图先加载好
schedule function ltw:state/6/generate_bonus 1t