execute unless score @s wish_total matches -2147483648..2147483647 run scoreboard players set @s wish_total 0
execute unless score @s wish_five matches -2147483648..2147483647 run scoreboard players set @s wish_five 0
execute unless score @s wish_four matches -2147483648..2147483647 run scoreboard players set @s wish_four 0
tellraw @s [{"text": ">> ","color": "aqua","bold": true},{"text": "你的幻境抽取:","color": "white","bold": false}]
tellraw @s [{"text": "总抽取次数: ","color": "aqua"},{"score": {"name": "@s","objective": "wish_total"},"color": "green"}]
tellraw @s [{"text": "距离上个五星物品的次数: ","color": "aqua"},{"score": {"name": "@s","objective": "wish_five"},"color": "gold"}]
tellraw @s [{"text": "距离上个四星物品的次数: ","color": "aqua"},{"score": {"name": "@s","objective": "wish_four"},"color": "light_purple"}]
tellraw @s [{"text": "五星物品保底 90 次抽取必出，四星物品保底 10 次抽取必出。","color": "aqua"}]
