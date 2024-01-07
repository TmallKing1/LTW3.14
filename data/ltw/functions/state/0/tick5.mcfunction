# 让无状态玩家变为准备状态
execute as @a[team=!debugging,team=!playing,team=!watching] run function ltw:state/0/state/join_watch

## 给予主大厅进度
#execute as @a at @s if entity @s[x=-1,y=22,z=-29,dx=5,dy=3,dz=3] run advancement grant @s only ltw:parkour/explore1
#execute as @a at @s if entity @s[x=6,y=48,z=-32,dx=4,dy=3,dz=9] run advancement grant @s only ltw:parkour/explore2
#execute as @a at @s if entity @s[x=0,y=28,z=-46,distance=..4] run advancement grant @s only ltw:parkour/explore3

# 隐藏/显示老板的名片
execute as @e[type=piglin,tag=shop_piglin_11,tag=lobby_entity] at @s if entity @a[distance=..5] run data modify entity @s CustomNameVisible set value true
execute as @e[type=piglin,tag=shop_piglin_11,tag=lobby_entity] at @s unless entity @a[distance=..5] run data modify entity @s CustomNameVisible set value false

# ————————————————————————————————————————————————————————————————————————————
# 游戏准备检查部分
# ————————————————————————————————————————————————————————————————————————————

# 检查已准备人数
execute store result score $count mem if entity @a[team=playing]
execute store result score #total_count mem if entity @a

# 开始：提示开始
execute if score $count mem matches 3.. if score #start_countdown mem matches 999.. run function ltw:state/0/start_countdown

# 取消：提示取消
execute if score $count mem matches ..2 if score #start_countdown mem matches ..999 run scoreboard players set #start_actionbar mem 8
execute if score $count mem matches ..2 if score #start_countdown mem matches ..999 as @a at @s run function lib:sounds/error
execute if score $count mem matches ..2 if score #start_countdown mem matches ..999 run bossbar set ltw:waiting color red
execute if score $count mem matches ..2 if score #start_countdown mem matches ..999 run bossbar set ltw:waiting max 1
execute if score $count mem matches ..2 if score #start_countdown mem matches ..999 run scoreboard players set #start_countdown mem 9999999

# 播放音效
execute if score #start_actionbar mem matches 1.. run scoreboard players remove #start_actionbar mem 1
scoreboard players remove #start_countdown mem 1
scoreboard players operation #start_sec mem = #start_countdown mem
scoreboard players operation #start_sec mem /= #4 mem
scoreboard players operation #start_div mem = #start_countdown mem
scoreboard players operation #start_div mem %= #4 mem
execute if score #start_sec mem matches 1..10 if score #start_div mem matches 3 run execute as @a at @s run function lib:sounds/hit2

# 20s：提示未准备
execute if score #start_countdown mem matches 80 run tellraw @a[team=watching,tag=pass_setup] [{"text":"\n","color":"red"},{"text":">> ","bold": true},{"text": "请丢出最后一格的物品准备开始，否则将旁观下一局游戏！"},"\n "]

# 10s：提示玩家数量过多
execute if score #start_countdown mem matches 40 if score $count mem matches 9.. run tellraw @a[tag=pass_setup] [{"text":"","color":"gold"},{"text":">> ","bold": true},{"text":"已超出游戏最多支持的 8 人人数上限, 将随机抽取 8 人开始游戏!"}]

# 5s：锁定准备状态
execute if score #start_countdown mem matches 20 run tellraw @a[tag=pass_setup] [{"text":"","color":"red"},{"text":">> ","bold": true},{"text":"游戏即将开始，已准备玩家不得取消！"}]
execute if score #start_countdown mem matches 20 run clear @a[team=playing] lime_dye{lobby_item: 1b, lobby_ready: 1b}

# 0s：开始游戏
execute if score #start_countdown mem matches ..0 run function ltw:state/0/start_game

# 显示信息
execute if score #start_countdown mem matches 1..998 run bossbar set ltw:waiting name [{"text":"","color":"green"},{"score":{"name":"$count","objective":"mem"}},"/",{"score":{"name":"#total_count","objective":"mem"}}," 人已准备 | ","将在 ",{"score":{"name":"#start_sec","objective":"mem"}}," 秒后开始游戏"]
execute if score #start_countdown mem matches 999.. unless score $start_bossbar_display mem matches 1 run bossbar set ltw:waiting name [{"text":"","color":"red"},{"score":{"name":"$count","objective":"mem"}},"/",{"score":{"name":"#total_count","objective":"mem"}}," 人已准备 | 需要 3 人以开始游戏"]
execute if score #start_countdown mem matches 999.. if score $start_bossbar_display mem matches 1 run bossbar set ltw:waiting name [{"text":"","color":"red"},"海内存知己 天涯若比邻"]

execute unless score #start_actionbar mem matches 1.. if score #gamemode mem matches 0 run title @a[team=!debugging,tag=pass_setup] actionbar [{"text":"当前模式：","color":"aqua"},{"text": "改版模式","color": "red"}]
execute unless score #start_actionbar mem matches 1.. if score #gamemode mem matches 1 run title @a[team=!debugging,tag=pass_setup] actionbar [{"text":"当前模式：","color":"aqua"},{"text": "经典模式","color": "green"}]
execute unless score #start_actionbar mem matches 1.. if score #gamemode mem matches 2 run title @a[team=!debugging,tag=pass_setup] actionbar [{"text":"当前模式：","color":"aqua"},{"text": "双倍奖励模式","color": "gold"}]
execute if score #start_actionbar mem matches 1.. if score #start_countdown mem matches ..999 run title @a[team=!debugging,tag=pass_setup] actionbar {"text": "游戏即将开始, 请使用快捷栏最后一格确定自己是否参与!","color": "green"}
execute if score #start_actionbar mem matches 1.. if score #start_countdown mem matches 999.. run title @a[team=!debugging,tag=pass_setup] actionbar {"text": "已准备人数不足, 游戏取消!","color": "red"}
execute store result bossbar ltw:waiting value run scoreboard players get #start_countdown mem
bossbar set ltw:waiting players @a