execute store result score $random mem run random value 70..170
execute if score $random mem matches ..85 store result score $random mem run random value -50..-25
scoreboard players operation @s power_count += $random mem
execute if score $random mem matches 0.. at @s run function lib:sounds/levelup
execute if score $random mem matches 0.. run tellraw @a[team=!debugging] ["",{"text": ">> ","color": "aqua","bold": true},{"selector":"@s","color": "aqua"}," 完成了一轮跑酷，获得 ",{"score":{"name": "$random","objective": "mem"},"color": "aqua"}," 点能量值"]
execute if score $random mem matches ..-1 at @s run function lib:sounds/curse
execute if score $random mem matches ..-1 run scoreboard players operation $random mem *= #-1 mem
execute if score $random mem matches ..-1 run tellraw @a[team=!debugging] ["",{"text": ">> ","color": "red","bold": true},{"selector":"@s","color": "red"},{"text":" 完成了一轮跑酷，精力消耗严重，损失了 ","color": "red"},{"score":{"name": "$random","objective": "mem"},"color": "red"},{"text":" 点能量值","color": "red"}]
