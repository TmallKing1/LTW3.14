tellraw @s ["",{"text": ">> ","color": "gold","bold": true},"你通过幻境抽取获得了 ",{"text": "五星 ","color": "gold"},{"text": "「LTCat 的头」","color": "gold"},"，共使用 ",{"score": {"name": "@s","objective": "wish_five"},"color": "gold"}," 个魔法符咒！"]
tellraw @a[tag=!wishing] ["",{"text": ">> ","color": "gold","bold": true},{"selector":"@s","color": "gold"}," 通过幻境抽取获得了 ",{"text": "五星 ","color": "gold"},{"text": "「LTCat 的头」","color": "gold"},"，共使用 ",{"score": {"name": "@s","objective": "wish_five"},"color": "gold"}," 个魔法符咒！"]
execute if score @s powerup_00001 matches 0 run summon marker ~ ~ ~ {Tags:["wish_marker"],CustomName:'{"text": "[新]「LTCat 的头」","color": "gold"}'}
execute unless score @s powerup_00001 matches 0 run summon marker ~ ~ ~ {Tags:["wish_marker"],CustomName:'{"text": "「LTCat 的头」","color": "gold"}'}
execute if score @s powerup_00001 matches 1..4 run scoreboard players add @s primogem_temp 1
execute if score @s powerup_00001 matches 5 run scoreboard players add @s primogem_temp 5
execute if score @s powerup_00001 matches ..4 run scoreboard players add @s powerup_00001 1
execute if score @s powerup_00001 matches 0..4 at @s run function lib:sounds/theend
execute if score @s powerup_00001 matches 5 at @s run function lib:sounds/levelup