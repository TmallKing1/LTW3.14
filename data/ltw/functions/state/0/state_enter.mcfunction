# 清理加载区域
forceload remove all
forceload add 0 0
forceload add 0 1900 50 2000
forceload add -32 -17 45 -80
forceload add 997 -976 949 -1024
## 世界模式
forceload add 960 -2064 1038 -1940

# 卸载数据包
datapack disable "file/bypass_cooldown"

# 世界边界
worldborder set 1000000

# 调整天气
weather clear

# 要求系统进入状态 0（等待大厅）
scoreboard players set $state mem 0
execute as @a[team=!debugging] run function ltw:state/0/player_enter

# HUD
scoreboard objectives setdisplay below_name green_total
scoreboard objectives setdisplay sidebar
scoreboard objectives setdisplay list green_total
scoreboard players set $bossbar_type mem 0
function lib:bossbar/show
bossbar set ltw:waiting visible true
bossbar set ltw:waiting players @a[team=!debugging,tag=pass_setup]
bossbar set ltw:waiting color red
bossbar set ltw:waiting max 1
bossbar set mini:lld visible false

# 伤害管理
scoreboard players set $remove_resistance mem 0
team modify playing friendlyFire false
team modify playing collisionRule never
team modify playing nametagVisibility always
gamerule naturalRegeneration true
gamerule doMobLoot false
gamerule doTileDrops false
gamerule mobGriefing false

# 重置游戏模式
scoreboard players set #gamemode mem 0

# 取消测试模式
scoreboard players set $test_mode mem 0

# 修改队伍颜色
team modify playing color green

# 重置开始倒计时
scoreboard players set #start_countdown mem 9999999
scoreboard players set #start_actionbar mem 0

# 游戏规则
gamerule sendCommandFeedback true

schedule function ltw:state/0/state_enter_2 10t replace