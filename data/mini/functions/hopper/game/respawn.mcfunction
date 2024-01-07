
# 给予状态效果
effect clear @s
function mini:main/give_effect
effect give @s weakness 5 10 true
effect give @s resistance 10 10 true
effect give @s invisibility 10 10 true
tag @s[team=playing] add respawn_protection

# 传送玩家
spreadplayers -16.0 4984.0 0 16 under 264 false @s[team=playing]
tp @s[team=watching] -16.29 288.85 4982.92 360.20 89.82

# 清理锁定物品
clear @s crimson_button{LockItem: 1b}
