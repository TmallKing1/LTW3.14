# 随机选择九个收集目标
kill @e[type=marker,tag=bingo_entity]
scoreboard players set $initialized_goals mem 0
function mini:bingo/game/init_goal2

# 生成木桶物品
execute as @e[scores={goal_pos=1}] run function mini:bingo/game/init_goal4
item replace block 1000 2 5000 container.3 from block 0 0 1 container.0
execute as @e[scores={goal_pos=2}] run function mini:bingo/game/init_goal4
item replace block 1000 2 5000 container.4 from block 0 0 1 container.0
execute as @e[scores={goal_pos=3}] run function mini:bingo/game/init_goal4
item replace block 1000 2 5000 container.5 from block 0 0 1 container.0
execute as @e[scores={goal_pos=4}] run function mini:bingo/game/init_goal4
item replace block 1000 2 5000 container.12 from block 0 0 1 container.0
execute as @e[scores={goal_pos=5}] run function mini:bingo/game/init_goal4
item replace block 1000 2 5000 container.13 from block 0 0 1 container.0
execute as @e[scores={goal_pos=6}] run function mini:bingo/game/init_goal4
item replace block 1000 2 5000 container.14 from block 0 0 1 container.0
execute as @e[scores={goal_pos=7}] run function mini:bingo/game/init_goal4
item replace block 1000 2 5000 container.21 from block 0 0 1 container.0
execute as @e[scores={goal_pos=8}] run function mini:bingo/game/init_goal4
item replace block 1000 2 5000 container.22 from block 0 0 1 container.0
execute as @e[scores={goal_pos=9}] run function mini:bingo/game/init_goal4
item replace block 1000 2 5000 container.23 from block 0 0 1 container.0