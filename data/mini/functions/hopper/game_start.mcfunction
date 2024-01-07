gamerule doDaylightCycle true
scoreboard players set $countdown mem 360

# 确定物品的价值
execute positioned 0 0 5000 run function mini:hopper/game/selling_item_init/init

# 确定玩家出生点
function mini:hopper/game/spawn_marker
schedule function mini:hopper/game/random_spawn 1t

# HUD
scoreboard objectives setdisplay list cash
scoreboard objectives setdisplay below_name cash
scoreboard objectives setdisplay sidebar cash
scoreboard players set @a[team=playing,tag=mini_running] cash 0
scoreboard players set $bossbar_color mem 4
scoreboard players set $countdown_max mem 360
scoreboard players set $bossbar_type mem 2
function lib:bossbar/show
execute if score $countdown_second mem matches 10.. run bossbar set mini:red name ["剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "red"},{"text": ":","color": "red"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "red"},"]"]
execute if score $countdown_second mem matches 10.. run bossbar set mini:yellow name ["剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "yellow"},{"text": ":","color": "yellow"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "yellow"},"]"]
execute if score $countdown_second mem matches 10.. run bossbar set mini:blue name ["剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "aqua"},{"text": ":","color": "aqua"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "aqua"},"]"]
execute unless score $countdown_second mem matches 10.. run bossbar set mini:red name ["剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "red"},{"text": ":0","color": "red"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "red"},"]"]
execute unless score $countdown_second mem matches 10.. run bossbar set mini:yellow name ["剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "yellow"},{"text": ":0","color": "yellow"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "yellow"},"]"]
execute unless score $countdown_second mem matches 10.. run bossbar set mini:blue name ["剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "aqua"},{"text": ":0","color": "aqua"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "aqua"},"]"]

# 世界边界
worldborder center -16.0 4984.0
worldborder set 31.999