# 出界玩家处理
execute if score $ley_line_disorder mem matches -1 as @a[tag=mini_running,gamemode=!spectator,x=2000,y=24,z=4000,dx=23,dy=9,dz=23] run scoreboard players set @s health_virt -100
execute if score $ley_line_disorder mem matches -1 as @a[tag=mini_running,gamemode=!spectator,x=2000,y=24,z=4000,dx=23,dy=9,dz=23] run function mini:main/player_failed

# 给予进度
execute unless score #gamemode mem matches 2 run advancement grant @a[scores={damage_dealt_pure=3000..}] only ltw:vs/potion2
execute unless score #gamemode mem matches 2 run advancement grant @a[scores={kills_auto=1..}] only ltw:vs/potion3