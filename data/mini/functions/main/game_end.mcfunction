# 小游戏结束
execute if score $mini_type mem matches 0 run function mini:parkour_old/game_end
execute if score $mini_type mem matches 1 run function mini:parkour/game_end
execute if score $mini_type mem matches 2 run function mini:tntrun/game_end
execute if score $mini_type mem matches 3 run function mini:hotpm/game_end
execute if score $mini_type mem matches 4 run function mini:colormatch/game_end
execute if score $mini_type mem matches 5 run function mini:phantom/game_end
execute if score $mini_type mem matches 6 run function mini:koth/game_end
execute if score $mini_type mem matches 7 run function mini:seat/game_end
execute if score $mini_type mem matches 8 run function mini:zombie/game_end
execute if score $mini_type mem matches 9 run function mini:river/game_end
execute if score $mini_type mem matches 10 run function mini:bullet/game_end
execute if score $mini_type mem matches 11 run function mini:boomer/game_end
execute if score $mini_type mem matches 12 run function mini:chain/game_end
execute if score $mini_type mem matches 101 run function mini:iron/game_end
execute if score $mini_type mem matches 102 run function mini:trade/game_end
execute if score $mini_type mem matches 103 run function mini:diamond/game_end
execute if score $mini_type mem matches 104 run function mini:hopper/game_end
execute if score $mini_type mem matches 105 run function mini:bingo/game_end
execute if score $mini_type mem matches 201 run function mini:ass/game_end
execute if score $mini_type mem matches 202 run function mini:arrow/game_end
execute if score $mini_type mem matches 301 run function mini:duckrush/game_end
execute if score $mini_type mem matches 302 run function mini:element/game_end
execute if score $mini_type mem matches 303 run function mini:power/game_end

# 计算排名
tag @a remove mini_rank1
tag @a remove mini_rank2
tag @a remove mini_rank3
tag @a remove mini_rank4
# 1
function mini:main/get_max_score
execute as @a if score @s mini_score = #score_max mem run tag @s[team=playing] add mini_rank1
tag @a[tag=mini_rank1] add max_uncounted
# 2
function mini:main/get_max_score
execute as @a[tag=!max_uncounted] if score @s mini_score = #score_max mem run tag @s[team=playing] add mini_rank2
tag @a[tag=mini_rank2] add max_uncounted
# 3
function mini:main/get_max_score
execute as @a[tag=!max_uncounted] if score @s mini_score = #score_max mem run tag @s[team=playing] add mini_rank3
tag @a[tag=max_uncounted] remove max_uncounted
# 4
tag @a[tag=!mini_rank1,tag=!mini_rank2,tag=!mini_rank3,team=playing] add mini_rank4

# 幻境干扰统计数据
execute unless score $test_mode mem matches 1 if score $round mem matches 1..5 unless score $ley_line_disorder mem matches 0 run scoreboard players add @a[tag=mini_rank1] stat_lld_win 1

# 给予进度
execute if score $mini_type mem matches 2 if score 游戏已进行时间 layer matches 30.. run advancement grant @a[tag=mini_rank1,scores={layer=4..}] only ltw:parkour/tnt2
execute if score $mini_type mem matches 2 if score 游戏已进行时间 layer matches 40.. run advancement grant @a[tag=mini_rank1,tag=!tntrun_adv_failed] only ltw:parkour/tnt4
execute if score $mini_type mem matches 3 run advancement grant @a[tag=mini_rank1,scores={mini_heart=2..}] only ltw:vs/potato1
execute if score $mini_type mem matches 3 run advancement grant @a[tag=mini_rank1,scores={mini_heart=3..}] only ltw:vs/potato2
execute if score $mini_type mem matches 3 run advancement grant @a[tag=mini_rank1,scores={mini_heart=5..}] only ltw:vs/potato3
execute if score $mini_type mem matches 3 run advancement grant @a[tag=mini_rank1,tag=!hotpm_hurt] only ltw:vs/potato4
execute if score $mini_type mem matches 4 if score #max_speed mem matches 1 run advancement grant @a[tag=mini_rank1,scores={mini_heart=2..}] only ltw:vs/colormatch2
execute if score $mini_type mem matches 4 if score #max_speed mem matches 1 run advancement grant @a[tag=mini_rank1,tag=!colormatch_hurt] only ltw:vs/colormatch3
execute if score $mini_type mem matches 4 if score #max_speed mem matches 1 run advancement grant @a[tag=mini_rank1,tag=!colormatch_hurt,tag=colormatch_adv_success] only ltw:vs/colormatch4
execute if score $mini_type mem matches 7 run advancement grant @a[tag=mini_rank1,scores={mini_heart=2..}] only ltw:vs/seat1
execute if score $mini_type mem matches 7 run advancement grant @a[tag=mini_rank1,scores={mini_heart=4..}] only ltw:vs/seat3
execute if score $mini_type mem matches 7 run advancement grant @a[tag=mini_rank1,tag=!seat_adv_failed] only ltw:vs/seat4
execute if score $mini_type mem matches 10 run advancement grant @a[tag=mini_rank1,scores={kill_villager=6..},tag=!bullet_adv_failed] only ltw:blood/bullet4
execute if score $mini_type mem matches 11 run advancement grant @a[tag=mini_rank1,scores={health_disp=10..}] only ltw:blood/boomer1
execute if score $mini_type mem matches 11 if score $countdown mem matches 1.. run advancement grant @a[tag=mini_rank1] only ltw:blood/boomer2
execute if score $mini_type mem matches 11 run advancement grant @a[tag=mini_rank1,scores={health_disp=20..}] only ltw:blood/boomer3
execute if score $mini_type mem matches 11 run advancement grant @a[tag=mini_rank1,x=2000,y=22,z=1000,dx=32,dy=16,dz=32] only ltw:blood/boomer4
execute if score $mini_type mem matches 201 run advancement grant @a[tag=mini_rank1,scores={health_disp=8..}] only ltw:blood/ass1
execute if score $mini_type mem matches 201 if score $countdown mem matches 1.. run advancement grant @a[tag=mini_rank1] only ltw:blood/ass2
execute if score $mini_type mem matches 201 run advancement grant @a[tag=mini_rank1,scores={health_disp=20..}] only ltw:blood/ass3
execute if score $mini_type mem matches 201 run advancement grant @a[tag=mini_rank1,scores={health_disp=20..,creeperUsed=..3}] only ltw:blood/ass4
execute if score $mini_type mem matches 202 run advancement grant @a[tag=mini_rank1,scores={layer=3..}] only ltw:parkour/arrow2
execute if score $mini_type mem matches 202 if score $countdown mem matches 1.. run advancement grant @a[tag=mini_rank1,scores={layer=3..}] only ltw:parkour/arrow3
execute if score $mini_type mem matches 202 if score $countdown mem matches 0 if score 强制死亡持续时间 layer matches 40.. run advancement grant @a[tag=mini_rank1] only ltw:parkour/arrow4

# 清理怪东西
clear @a[team=!debugging] #mini:game_item{game_item: 1b}

# 隐藏幻境干扰状态条
bossbar set mini:lld visible false

# 进入状态 6
function ltw:state/6/state_enter