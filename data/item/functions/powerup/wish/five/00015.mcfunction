tellraw @s ["",{"text": ">> ","color": "gold","bold": true},"你通过幻境抽取获得了 ",{"text": "五星 ","color": "gold"},{"text": "「JK137 的头」","color": "gold"},"，共使用 ",{"score": {"name": "@s","objective": "wish_five"},"color": "gold"}," 个魔法符咒！"]
tellraw @a[tag=!wishing] ["",{"text": ">> ","color": "gold","bold": true},{"selector":"@s","color": "gold"}," 通过幻境抽取获得了 ",{"text": "五星 ","color": "gold"},{"text": "「JK137 的头」","color": "gold"},"，共使用 ",{"score": {"name": "@s","objective": "wish_five"},"color": "gold"}," 个魔法符咒！"]
execute if score @s powerup_00015 matches 0 run tellraw @s ["",{"text": ">> ","color": "green","bold": true},{"text": "你获得了一个新物品！","color": "green"}]
execute if score @s powerup_00015 matches 1..4 run tellraw @s ["",{"text": ">> ","color": "green","bold": true},{"text": "你的物品等级增加了！返还 1 个魔法符咒！","color": "green"}]
execute if score @s powerup_00015 matches 1..4 run scoreboard players add @s primogem 64
execute if score @s powerup_00015 matches 5 run tellraw @s ["",{"text": ">> ","color": "green","bold": true},{"text": "你的物品已到满级，返还 5 个魔法符咒！","color": "green"}]
execute if score @s powerup_00015 matches 5 run scoreboard players add @s primogem 320
execute if score @s powerup_00015 matches ..4 run scoreboard players add @s powerup_00015 1
execute if score @s powerup_00015 matches 0..4 at @s run function lib:sounds/theend
execute if score @s powerup_00015 matches 5 at @s run function lib:sounds/levelup
