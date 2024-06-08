# 计算当前剩余时间是否满足刷新物品的条件
scoreboard players operation $countdown temp = $countdown mem
scoreboard players operation $countdown temp %= #45 mem
execute if score $countdown temp matches 44 run function mini:sand/game/refresh_sand

# HUD
execute if score $countdown temp matches ..5 run scoreboard players set $bossbar_color mem 1
execute if score $countdown temp matches 6..19 run scoreboard players set $bossbar_color mem 2
execute if score $countdown temp matches 20.. run scoreboard players set $bossbar_color mem 4
function lib:bossbar/show
execute if score $countdown_second mem matches 10.. run bossbar set mini:red name ["剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "red"},{"text": ":","color": "red"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "red"},"]"]
execute if score $countdown_second mem matches 10.. run bossbar set mini:yellow name ["剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "yellow"},{"text": ":","color": "yellow"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "yellow"},"]"]
execute if score $countdown_second mem matches 10.. run bossbar set mini:blue name ["剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "aqua"},{"text": ":","color": "aqua"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "aqua"},"]"]
execute unless score $countdown_second mem matches 10.. run bossbar set mini:red name ["剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "red"},{"text": ":0","color": "red"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "red"},"]"]
execute unless score $countdown_second mem matches 10.. run bossbar set mini:yellow name ["剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "yellow"},{"text": ":0","color": "yellow"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "yellow"},"]"]
execute unless score $countdown_second mem matches 10.. run bossbar set mini:blue name ["剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "aqua"},{"text": ":0","color": "aqua"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "aqua"},"]"]

# 显示提示
execute if score $countdown temp matches 5 run title @a[team=!debugging] times 2 40 10
execute if score $countdown temp matches 5 if score $countdown mem matches 45.. run title @a[team=!debugging] subtitle {"text": "5 秒后生成新一轮宝物！","color": "yellow"}
execute if score $countdown temp matches 5 unless score $countdown mem matches 45.. run title @a[team=!debugging] subtitle {"text": "5 秒后游戏结束！","color": "red"}
execute if score $countdown temp matches 5 run title @a[team=!debugging] title ""

# 游戏结束判定
execute if score $countdown mem matches 0 run function mini:main/game_end