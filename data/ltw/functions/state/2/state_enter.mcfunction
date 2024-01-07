# 要求系统进入状态 2（终轮小游戏投票）
scoreboard players set $state mem 2

# 玩家进入状态
execute as @a[team=!debugging] run function ltw:state/2/player_enter

# HUD
scoreboard objectives setdisplay below_name total_score_disp
scoreboard objectives setdisplay sidebar vote_game_disp
scoreboard objectives setdisplay list total_score_disp
scoreboard players set $bossbar_type mem 0
function lib:bossbar/show

# 清理奖励物资
kill @e[tag=bonus_item]

# 投票倒计时：30秒
scoreboard players set $countdown mem 30

# 初始化投票
function ltw:state/2/initialize_vote

# 禁用 tempo_block
scoreboard players set $tempo_enable mem 0

# 修改队伍颜色
team modify playing color reset

# 游戏规则
gamerule sendCommandFeedback false