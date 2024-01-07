execute store result score $random mem run random value 1..100
execute if score $random mem <= #jk_head mem run scoreboard players operation @s gold += #1 mem
execute if score $random mem <= #jk_head mem run scoreboard players operation @s gold_total += #1 mem
execute if score $random mem <= #jk_head mem run scoreboard players operation @s gold_extra += #1 mem
execute if score $random mem <= #jk_head mem run tellraw @s ["",{"text": ">> ","color":"aqua","bold": true},{"text":"你获得了 3 个额外的金粒！","color":"aqua"}]