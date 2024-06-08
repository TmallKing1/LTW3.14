# 对单个玩家的处理（如果玩家中途加入就会执行此函数）
function lib:sounds/music/rest
title @s clear
title @s actionbar ""

# 显示 Title
title @s times 5t 53t 2t
execute unless score $test_mode mem matches 1 unless score $double_reward mem matches 1 run title @s subtitle ""
execute unless score $test_mode mem matches 1 if score $double_reward mem matches 1 run title @s subtitle {"text": "双倍奖励模式","color": "light_purple"}
execute unless score $test_mode mem matches 1 unless score $round mem matches 0 run title @s title {"text": "选择奖励"}
execute if score $test_mode mem matches 1 run title @s title {"text": "游戏结束"}
execute if score $round mem matches 0 run title @s title {"text": "游戏结束"}

# 重置玩家血量上限
attribute @s generic.max_health base set 20

# 状态效果
effect clear @s
effect give @s saturation infinite 0 true
effect give @s night_vision infinite 0 true

# 显示小游戏结果
function mini:main/show_result
execute at @s run function lib:sounds/levelup

# mcci
execute at @s run playsound mcc:games.global.timer.round_end player @s

# 自由旁观
gamemode spectator @s[team=!debugging]
spectate

# 清理物品
clear @s #mini:game_item{game_item: 1b}
clear @s crimson_button{LockItem: 1b}
recipe take @s *