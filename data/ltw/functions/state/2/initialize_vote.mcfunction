# 清理背景
execute positioned 17.0 10.0 1967.0 run function ltw:state/2/clear_background
execute positioned 19.0 10.0 1962.0 run function ltw:state/2/clear_background
execute positioned 24.0 10.0 1960.0 run function ltw:state/2/clear_background
execute positioned 29.0 10.0 1962.0 run function ltw:state/2/clear_background
execute positioned 31.0 10.0 1967.0 run function ltw:state/2/clear_background
execute positioned 29.0 10.0 1972.0 run function ltw:state/2/clear_background
execute positioned 24.0 10.0 1974.0 run function ltw:state/2/clear_background
execute positioned 19.0 10.0 1972.0 run function ltw:state/2/clear_background

# 清理原有投票用实体
kill @e[type=marker,tag=vote]

# 生成投票用实体
summon marker 24.5 11.0 1967.5 {Tags:["vote","vote_1"],data:{name: "钢铁狂潮"}}
summon marker 24.5 11.0 1967.5 {Tags:["vote","vote_2"],data:{name: "贸易专家"}}
summon marker 24.5 11.0 1967.5 {Tags:["vote","vote_3"],data:{name: "钻石风暴"}}
summon marker 24.5 11.0 1967.5 {Tags:["vote","vote_4"],data:{name: "富翁之路"}}
summon marker 24.5 11.0 1967.5 {Tags:["vote","vote_5","vote_max"],data:{name: "三点一线"}}
scoreboard players set @e[tag=vote_1] vote_game 101
scoreboard players set @e[tag=vote_2] vote_game 102
scoreboard players set @e[tag=vote_3] vote_game 103
scoreboard players set @e[tag=vote_4] vote_game 104
scoreboard players set @e[tag=vote_5] vote_game 105
scoreboard players set @e[tag=vote_1] vote_value 1
scoreboard players set @e[tag=vote_2] vote_value 2
scoreboard players set @e[tag=vote_3] vote_value 3
scoreboard players set @e[tag=vote_4] vote_value 4
scoreboard players set @e[tag=vote_5] vote_value 5

# 记分板
scoreboard players reset * vote_game_disp
scoreboard players set 钢铁狂潮 vote_game_disp 0
scoreboard players set 贸易专家 vote_game_disp 0
scoreboard players set 钻石风暴 vote_game_disp 0
scoreboard players set 富翁之路 vote_game_disp 0
scoreboard players set 三点一线 vote_game_disp 0
