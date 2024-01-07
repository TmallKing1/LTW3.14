execute if score $zombie_stage mem matches 3 run tellraw @a ["",{"text": ">> ","color": "red","bold": true},{"text": "强制死亡已开启！","color": "red"}]
execute if score $zombie_stage mem matches 3 run scoreboard players set $bossbar_color mem 1
execute if score $zombie_stage mem matches 3 run advancement grant @a[team=playing,tag=mini_running] only ltw:blood/zombie2
execute if score $zombie_stage mem matches 3 run scoreboard players set $zombie_stage mem 4

execute if score $zombie_stage mem matches 2 run tellraw @a ["",{"text": ">> ","color": "red","bold": true},{"text": "所有僵尸（黑曜石僵尸除外）的生命值提升了！","color": "red"}]
execute if score $zombie_stage mem matches 2 as @e[type=zombie,tag=!obsidian_zombie] run attribute @s generic.max_health base set 50
execute if score $zombie_stage mem matches 2 as @e[type=zombie,tag=!obsidian_zombie] run data modify entity @s[nbt={Health: 30.0f}] Health set value 50.0f
execute if score $zombie_stage mem matches 2 run bossbar set mini:blue name ["",{"text": "进入强制死亡 ","color": "red"},"剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "aqua"},{"text": ":","color": "aqua"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "aqua"},"]"]
execute if score $zombie_stage mem matches 2 run scoreboard players set $countdown mem 60
execute if score $zombie_stage mem matches 2 run scoreboard players set $countdown_max mem 60
execute if score $zombie_stage mem matches 2 run scoreboard players set $zombie_stage mem 3

execute if score $zombie_stage mem matches 1 run tellraw @a ["",{"text": ">> ","color": "red","bold": true},{"text": "所有僵尸的移动速度与击退抗性提升了！","color": "red"}]
execute if score $zombie_stage mem matches 1 as @e[type=zombie] run attribute @s generic.movement_speed base set 0.32
execute if score $zombie_stage mem matches 1 as @e[type=zombie] run attribute @s generic.knockback_resistance base set 0.5
execute if score $zombie_stage mem matches 1 run bossbar set mini:blue name ["",{"text": "僵尸生命值提升 ","color": "red"},"剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "aqua"},{"text": ":","color": "aqua"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "aqua"},"]"]
execute if score $zombie_stage mem matches 1 run scoreboard players set $countdown mem 40
execute if score $zombie_stage mem matches 1 run scoreboard players set $zombie_stage mem 2

execute if score $zombie_stage mem matches 0 run tellraw @a ["",{"text": ">> ","color": "red","bold": true},{"text": "所有僵尸（持剑僵尸除外）的攻击伤害提升了！","color": "red"}]
execute if score $zombie_stage mem matches 0 as @e[type=zombie,tag=!sword_zombie] run attribute @s generic.attack_damage base set 8
execute if score $zombie_stage mem matches 0 run bossbar set mini:blue name ["",{"text": "僵尸移动速度与击退抗性提升 ","color": "red"},"剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "aqua"},{"text": ":","color": "aqua"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "aqua"},"]"]
execute if score $zombie_stage mem matches 0 run scoreboard players set $countdown mem 40
execute if score $zombie_stage mem matches 0 run scoreboard players set $zombie_stage mem 1
function lib:bossbar/show