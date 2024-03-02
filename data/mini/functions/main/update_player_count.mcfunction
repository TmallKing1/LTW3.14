# 更新存活与结束的玩家数量
# method 1
#scoreboard players set $player_alive mem 0
#execute as @a[tag=mini_running,team=playing,scores={mini_score=-10..}] run scoreboard players add $player_alive mem 1
#scoreboard players set $player_finish mem 0
#execute as @a[tag=!mini_running,team=playing,scores={mini_score=-10..}] run scoreboard players add $player_finish mem 1

# method 2
execute store result score $player_alive mem if entity @a[tag=mini_running,team=playing,scores={mini_score=-10..}]
execute store result score $player_finish mem if entity @a[tag=!mini_running,team=playing,scores={mini_score=-10..}]