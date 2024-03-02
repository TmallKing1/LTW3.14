tellraw @s ["",{"text": ">> ","color": "light_purple","bold": true},"你通过幻境抽取获得了 ",{"text": "四星 ","color": "light_purple"},{"text": "「投掷器」","color": "light_purple"},"，共使用 ",{"score": {"name": "@s","objective": "wish_four"},"color": "light_purple"}," 个魔法符咒！"]
tellraw @a[tag=!wishing] ["",{"text": ">> ","color": "light_purple","bold": true},{"selector":"@s","color": "light_purple"}," 通过幻境抽取获得了 ",{"text": "四星 ","color": "light_purple"},{"text": "「投掷器」","color": "light_purple"},"，共使用 ",{"score": {"name": "@s","objective": "wish_four"},"color": "light_purple"}," 个魔法符咒！"]
execute if score @s powerup_00010 matches 0 run tellraw @s ["",{"text": ">> ","color": "green","bold": true},{"text": "你获得了一个新物品！","color": "green"}]
execute if score @s powerup_00010 matches 1 run tellraw @s ["",{"text": ">> ","color": "green","bold": true},{"text": "你已经获得过该物品，返还 1 个魔法符咒！","color": "green"}]
execute if score @s powerup_00010 matches 1 run scoreboard players add @s primogem 64
execute if score @s powerup_00010 matches 0 run scoreboard players add @s powerup_00010 1
execute if score @s powerup_00010 matches 0 at @s run function lib:sounds/levelup