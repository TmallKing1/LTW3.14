# 对单个玩家的处理（如果玩家中途加入就会执行此函数）
function lib:sounds/music/rest
title @s clear
title @s actionbar ""

# 显示 Title
title @s times 5t 53t 2t
execute unless score $double_reward mem matches 1 run title @s subtitle ""
execute if score $double_reward mem matches 1 run title @s subtitle {"text": "双倍奖励模式","color": "light_purple"}
title @s title {"text": "选择奖励"}

# 重置玩家血量上限
attribute @s generic.max_health base set 20

# 状态效果
effect clear @s
effect give @s saturation infinite 0 true
gamerule naturalRegeneration true
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