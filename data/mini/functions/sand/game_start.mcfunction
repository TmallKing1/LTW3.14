scoreboard players set $countdown mem 180

# HUD
scoreboard objectives setdisplay list health_disp
scoreboard objectives setdisplay below_name gold_inhand
scoreboard objectives setdisplay sidebar gold_ingame
scoreboard players set $bossbar_color mem 4
scoreboard players set $countdown_max mem 180
scoreboard players set $bossbar_type mem 2
function lib:bossbar/show
execute if score $countdown_second mem matches 10.. run bossbar set mini:blue name ["剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "aqua"},{"text": ":","color": "aqua"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "aqua"},"]"]
execute unless score $countdown_second mem matches 10.. run bossbar set mini:blue name ["剩余时间 [",{"score":{"name": "$countdown_minute","objective": "mem"},"color": "aqua"},{"text": ":0","color": "aqua"},{"score":{"name": "$countdown_second","objective": "mem"},"color": "aqua"},"]"]

# 整个猪灵
summon piglin 2032 22 3014 {Tags: ["sand_entity"], PersistenceRequired: 1b, IsImmuneToZombification: 1b, CannotHunt: 1b, HandItems: [{id: "golden_sword", Count: 1b,tag:{Enchantments:[{id:"protection",lvl:1}]}}, {}], HandDropChances: [0.0f, 0.0f], CustomName: '{"text":"你说得对，但是你是怎么看到我的名字的？","color":"red"}'}