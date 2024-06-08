# 要求系统进入状态 3（主要阶段结束，初始化小游戏）
scoreboard players set $state mem 3

# 双倍奖励处理
## 前 5 轮每轮有 1/4 概率为双倍奖励，最终轮有 3/4 概率为双倍奖励
execute store result score $random mem run random value 0..3
scoreboard players set $double_reward mem 0
execute if score $round mem matches 1..5 if score $random mem matches 0 run scoreboard players set $double_reward mem 1
execute if score $round mem matches 6 if score $random mem matches 0..2 run scoreboard players set $double_reward mem 1
## 游戏模式
execute if score #gamemode mem matches 1 run scoreboard players set $double_reward mem 0
execute if score #gamemode mem matches 2 run scoreboard players set $double_reward mem 1

# 1.2 版本活动：发动总攻，轮数为 5
#execute if score $round mem matches 5 store result score $random mem run random value 1..2
#execute if score $round mem matches 5 if score $attack_end mem matches 0 if score $random mem matches 1 run scoreboard players set $mini_type mem 304
#execute if score $round mem matches 5 if score $attack_end mem matches 0 if score $random mem matches 1 run scoreboard players set $round mem 0
#execute if score $round mem matches 0 if score $attack_end mem matches 1 run scoreboard players set $round mem 5

# 玩家进入状态
execute as @a[team=!debugging] run function ltw:state/3/player_enter
function ltw:state/3/spectate

# HUD
scoreboard objectives setdisplay below_name total_score_disp
scoreboard objectives setdisplay sidebar total_score
scoreboard objectives setdisplay list total_score_disp
scoreboard players set $bossbar_type mem 0
function lib:bossbar/show

# 修改时间
time set midnight

# 初始化倒计时
scoreboard players set $countdown mem 3

# 禁用 tempo_block
scoreboard players set $tempo_enable mem 0

# 修改队伍颜色
team modify playing color reset

# 清理奖励物资
kill @e[tag=bonus_item]

# 小游戏编号：生成一个 1~[最大游戏编号] 的 randomarray，每次从其中取下一个数。
execute unless data storage ltw:mini types[0] run function ltw:state/3/newarray
execute if score $round mem matches 1..5 store result score $mini_type mem run data get storage ltw:mini types[0]
execute if score $round mem matches 1..5 run data remove storage ltw:mini types[0]

# 对遗迹寻宝的处理
# 如果游戏为遗迹寻宝，则有一半概率改为遗迹遍历，一半概率不变
execute store result score $random mem run random value 0..1
execute if score $mini_type mem matches 1 if score $random mem matches 1 run scoreboard players set $mini_type mem 0

# 前置/后置小游戏
# 如果为第 1 轮，则有 40% 概率选用刺客，40% 概率选用掘战，20% 概率不变
# 如果为第 6 轮且为改版模式，则不动，根据投票选择
# 如果为第 6 轮且为经典模式，则在四个游戏中随机选取一个
execute store result score $random mem run random value 1..5
execute if score $round mem matches 1 if score $random mem matches 1..2 run scoreboard players set $mini_type mem 201
execute if score $round mem matches 1 if score $random mem matches 3..4 run scoreboard players set $mini_type mem 202
execute if score #gamemode mem matches 1 if score $round mem matches 6 if score $random mem matches 1 run scoreboard players set $mini_type mem 101
execute if score #gamemode mem matches 1 if score $round mem matches 6 if score $random mem matches 2 run scoreboard players set $mini_type mem 102
execute if score #gamemode mem matches 1 if score $round mem matches 6 if score $random mem matches 3 run scoreboard players set $mini_type mem 103
execute if score #gamemode mem matches 1 if score $round mem matches 6 if score $random mem matches 4 run scoreboard players set $mini_type mem 104
execute if score #gamemode mem matches 1 if score $round mem matches 6 if score $random mem matches 5 run scoreboard players set $mini_type mem 105

# 活动：元素战争
# 若当前轮数与游戏开始时随机确定的轮数匹配，则选用元素战争
#execute if score $round mem = $element_turn mem run scoreboard players set $mini_type mem 302

# 1.0 版本活动：会心一击
# 若当前轮数为 0 则选用会心一击
#execute if score $round mem matches 0 run scoreboard players set $mini_type mem 303

# 1.0 版本活动：开局不重置物品，打完第一局再重置
#execute if score $round mem matches 1 as @a[team=playing] at @s run function item:shop/refresh_equip

# 1.4 版本活动：元素战争 EX
# 若当前轮数为 0 则选用元素战争 EX
#execute if score $round mem matches 0 run scoreboard players set $mini_type mem 302

# 1.4 版本活动：开局不重置物品，打完第一局再重置
#execute if score $round mem matches 1 as @a[team=playing] at @s run function item:shop/refresh_equip

# 游戏规则
gamerule sendCommandFeedback true

# 初始化小游戏
scoreboard players add $ round_id 1
function mini:main/game_init
