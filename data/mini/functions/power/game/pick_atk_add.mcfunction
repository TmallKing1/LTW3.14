# 标记玩家
tag @p[distance=..1,tag=mini_running,limit=1,sort=nearest] add selected_player

# 随机加分
execute store result score $random mem run random value 15..25
scoreboard players operation @p[tag=selected_player] player_atk += $random mem

# 显示提示
tellraw @p[tag=selected_player] ["",{"text": ">> ","color": "green","bold": true},"你获得了 ",{"text": "0.","color": "green"},{"score":{"name": "$random","objective": "mem"},"color":"green"}," 点攻击伤害加成！"]
execute as @p[tag=selected_player] at @s run function lib:sounds/hit

# 重置武器
execute as @p[tag=selected_player] run function mini:power/game/give_sword

# 取消标记
tag @a remove selected_player

# 杀死自己
kill @s