# 根据触发器内数值决定投票的游戏
execute if score @s vote_trigger matches 528746 run scoreboard players add @e[tag=vote,scores={vote_game=101..}] vote_value 3
execute if score @s vote_trigger matches 528747 run scoreboard players add @e[tag=vote,scores={vote_game=102..}] vote_value 3
execute if score @s vote_trigger matches 528748 run scoreboard players add @e[tag=vote,scores={vote_game=103..}] vote_value 3
execute if score @s vote_trigger matches 528749 run scoreboard players add @e[tag=vote,scores={vote_game=104..}] vote_value 3
execute if score @s vote_trigger matches 528750 run scoreboard players add @e[tag=vote,scores={vote_game=105..}] vote_value 3
execute if score @s vote_trigger matches 528746 run scoreboard players add 钢铁狂潮 vote_game_disp 1
execute if score @s vote_trigger matches 528747 run scoreboard players add 贸易专家 vote_game_disp 1
execute if score @s vote_trigger matches 528748 run scoreboard players add 钻石风暴 vote_game_disp 1
execute if score @s vote_trigger matches 528749 run scoreboard players add 富翁之路 vote_game_disp 1
execute if score @s vote_trigger matches 528750 run scoreboard players add 三点一线 vote_game_disp 1

# 显示提示
execute if score @s vote_trigger matches 528746..528750 run tellraw @s ["",{"text": ">> ","color": "green","bold": true},{"text": "你已投票成功！","color": "green"}]
execute if score @s vote_trigger matches 528746..528750 at @s run function lib:sounds/hit
execute unless score @s vote_trigger matches 528746..528750 run tellraw @s ["",{"text": ">> ","color": "red","bold": true},{"text": "你已弃权！","color": "red"}]
execute unless score @s vote_trigger matches 528746..528750 at @s run function lib:sounds/error

# 取消玩家的投票资格
tag @s remove canvote
gamemode spectator @s
clear @s #mini:game_item{game_item: 1b}