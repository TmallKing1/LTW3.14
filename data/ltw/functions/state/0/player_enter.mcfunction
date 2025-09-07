# 对单个玩家的处理（如果玩家中途加入就会执行此函数）
function lib:sounds/music/lobby
title @s clear
title @s actionbar ""

# 等级初始化
scoreboard players add @s level 0

# 重置玩家血量上限
attribute @s generic.max_health base set 20

# 重置经验值与配方
recipe take @a *
xp set @s 0 points
xp set @s 0 levels
function ltw:state/0/display_level

# 开启触发器
scoreboard players enable @s setup_trigger
scoreboard players set @s setup_trigger 0
scoreboard players enable @s buy_trigger

# 状态效果
effect clear @s
effect give @s saturation infinite 0 true
effect give @s instant_health 1 10 true
effect give @s resistance infinite 4 true
effect give @s weakness infinite 4 true

# 冒险模式
gamemode adventure @s[team=!debugging]

# 新玩家添加「通过游戏设置」标签
tellraw @s[tag=!new_checked] ["",{"text": ">> ","color": "aqua","bold": true},"已自动跳过游戏设置调整阶段，丢出最后一格的物品即可准备开始游戏！"]
tellraw @s[tag=!new_checked] ["",{"text": ">> ","color": "aqua","bold": true},"如果你未使用你正在使用的客户端玩过该服务器或其他《游艺街》服务器，最好还是 ",{"text": "点击此处","color": "aqua","underlined": true,"clickEvent": {"action": "run_command","value": "/trigger setup_trigger set -1"}}," 进行一下游戏设置调整……"]
tag @s[tag=!new_checked] add pass_setup
tag @s[tag=!new_checked] add new_checked

# 删档补偿
scoreboard players add @s[tag=!bc_2] primogem 640
tag @s[tag=!bc_2] add bc_2

# 版本更新补偿
tellraw @s[tag=!bc_1_6,scores={stat_level=1..}] ["",{"text": ">> ","color": "aqua","bold": true},"成功领取 1.6 版本更新奖励：4 魔法符咒！"]
scoreboard players add @s[tag=!bc_1_6,scores={stat_level=1..}] primogem 256
tag @s[tag=!bc_1_6] add bc_1_6

# 活动：黎明盛会
tag @s remove double_reward
#execute unless score @s double_reward matches 0..8 run scoreboard players set @s double_reward 8

# 传送玩家
tp @s[team=!debugging,tag=pass_setup] -10 8 -32 135 0
tp @s[team=!debugging,tag=pass_setup,scores={shop_tower=1..}] 19.80 10.00 -66.77 -90.08 28.81
tp @s[team=!debugging,tag=!pass_setup] 2.5 300.2 -52.5 0 0

# 刷新物品
clear @s[team=!debugging]
execute as @s[team=!debugging] run function item:shop/refresh_gold
execute as @s[team=!debugging] run function item:shop/refresh_green
execute as @s[team=!debugging] run function item:shop/refresh_diamond
execute as @s[team=!debugging] run function item:shop/refresh_essence

# 重置抽卡物品
function item:powerup/enderchest/reset

# 世界模式数据初始化
function ltw:state/0/world/player_enter

# 星人
tag @s[tag=lost_enable] add lost
execute if entity @s[tag=lost,tag=!lost_enable] run item replace entity @s inventory.26 with nether_star{display:{Name:'{"text": "切换「失落的日记」标识显示","color": "light_purple","italic": false}',Lore:['{"text": "点击切换你的「失落的日记」标识（紫色星星）显示状态","color": "gray","italic": false}','[{"text": "当前状态：","color": "gray","italic": false},{"text": "隐藏","color": "red","italic": false}]']},lobby_item:1b,lost_enable:0b}
execute if entity @s[tag=lost,tag=lost_enable] run item replace entity @s inventory.26 with nether_star{display:{Name:'{"text": "切换「失落的日记」标识显示","color": "light_purple","italic": false}',Lore:['{"text": "点击切换你的「失落的日记」标识（紫色星星）显示状态","color": "gray","italic": false}','[{"text": "当前状态：","color": "gray","italic": false},{"text": "显示","color": "green","italic": false}]']},lobby_item:1b,lost_enable:1b}

# 默认进入待机状态
function ltw:state/0/state/join_watch