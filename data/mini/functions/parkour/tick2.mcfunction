# 传送门粒子
particle portal 1014.5 21.5 1057.0 0 1.5 1 1 15

# 能量值扣减
execute if score $ley_line_disorder mem matches -1 run scoreboard players remove @a[tag=mini_running] power_count 1

# 能量值增加
execute if score $ley_line_disorder mem matches -1 as @a[scores={power_count_temp=1..}] run tellraw @a[team=!debugging] ["",{"text": ">> ","color": "aqua","bold": true},{"selector":"@s","color": "aqua"}," 获得了 ",{"score":{"name": "@s","objective": "power_count_temp"},"color": "aqua"}," 点能量值"]
execute if score $ley_line_disorder mem matches -1 as @a[scores={power_count_temp=1..}] run scoreboard players operation @s power_count += @s power_count_temp
scoreboard players set @a power_count_temp 0