
# 剩余时间重置
execute if score $player_total_river mem matches ..4 run scoreboard players remove $timer_max mem 3
execute if score $player_total_river mem matches 5.. run scoreboard players remove $timer_max mem 2
execute if score $timer_max mem matches ..10 run scoreboard players set $timer_max mem 10
execute if score $player_total_river mem matches ..4 run scoreboard players add $bridge_broken mem 20
execute if score $player_total_river mem matches 5.. run scoreboard players add $bridge_broken mem 10
scoreboard players operation $countdown mem = $timer_max mem
scoreboard players operation $countdown_max mem = $timer_max mem
function lib:bossbar/show

execute if score $countdown_second mem matches 10.. run bossbar set mini:blue name ["剩余时间 [",{"score":{"name": "$countdown_second","objective": "mem"},"color": "aqua"},{"text": "/","color": "aqua"},{"score":{"name": "$countdown_max","objective": "mem"},"color": "aqua"},"]"]
execute unless score $countdown_second mem matches 10.. run bossbar set mini:blue name ["剩余时间 [",{"score":{"name": "$countdown_second","objective": "mem"},"color": "aqua"},{"text": "/","color": "aqua"},{"score":{"name": "$countdown_max","objective": "mem"},"color": "aqua"},"]"]

# 断桥处理
fill 1006 12 15999 1006 13 15999 air
setblock 1006 13 15999 structure_block[mode=load]{metadata: "", mirror: "NONE", ignoreEntities: 1b, powered: 0b, seed: 0L, rotation: "NONE", posX: 1, posY: 0, posZ: 2, sizeX: 18, sizeY: 9, sizeZ: 30, mode: "LOAD", integrity: 1.0f, showair: 0b, name: "mini:river_air"}
execute store result block 1006 13 15999 integrity float 0.001 run scoreboard players get $bridge_broken mem
setblock 1006 12 15999 redstone_block

# 进度判定
clone 1007 13 16001 1024 21 16030 1007 13 16032
execute store result score #bridge mem run fill 1007 13 16032 1024 21 16061 air
execute if score #bridge mem matches 1..20 run advancement grant @s only ltw:parkour/river4