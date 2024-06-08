# 结束总攻
forceload remove 967 17000 1030 17095
worldborder set 1000000

# 清理残余实体
tp @e[type=ravager] 1000 -100 17000
kill @e[type=ravager]

# HUD
scoreboard objectives setdisplay below_name total_score_disp
scoreboard objectives setdisplay sidebar total_score
scoreboard objectives setdisplay list total_score_disp
scoreboard players set $bossbar_type mem 0
function lib:bossbar/show

# 记录分数
scoreboard players add @a[tag=mini_running] act_turns 1
execute as @a[tag=mini_running] run scoreboard players operation @s damage_dealt_back = @s damage_dealt
advancement grant @a[scores={damage_dealt_back=1000..}] until ltw:activity/attack/damage1
advancement grant @a[scores={damage_dealt_back=3000..}] until ltw:activity/attack/damage2
advancement grant @a[scores={damage_dealt_back=5000..}] until ltw:activity/attack/damage3
advancement grant @a[scores={damage_dealt_back=10000..}] until ltw:activity/attack/damage4
advancement grant @a[scores={act_turns=1..,damage_dealt_back=100..}] until ltw:activity/attack/turns1
advancement grant @a[scores={act_turns=3..,damage_dealt_back=100..}] until ltw:activity/attack/turns2
advancement grant @a[scores={act_turns=6..,damage_dealt_back=100..}] until ltw:activity/attack/turns3
advancement grant @a[scores={act_turns=10..,damage_dealt_back=100..}] until ltw:activity/attack/turns4

# 显示提示
tellraw @a[tag=mini_running] ["",{"text": ">> ","color": "green","bold": true},{"text": "你总共造成的伤害值 *10 为 ","color": "green"},{"score":{"name": "*","objective": "damage_dealt_back"},"color": "green"}]

# 计算奖励
execute as @a[tag=mini_running] run function mini:attack/game/calc_reward

# 进入状态 3
scoreboard players set $attack_end mem 1
execute unless score $test_mode mem matches 1 run function ltw:state/3/state_enter
execute if score $test_mode mem matches 1 unless score $round mem matches 6 run function ltw:state/3/state_enter
execute if score $test_mode mem matches 1 if score $round mem matches 6 run function ltw:main/game_end