# as player
execute store result score #bonus_primogem mem run data get storage item:bonus item.tag.bonus_primogem

# 更改积分
execute unless score $test_mode mem matches 1 run scoreboard players operation @s primogem += #bonus_primogem mem

# 显示提示
execute unless score $test_mode mem matches 1 if score #bonus_primogem mem matches 64 run tellraw @a ["",{"text": ">> ","color":"aqua","bold": true},{"translate":"ltw.game.hint.bonus.acquired.me","with": [{"selector": "@s","color":"aqua"},{"translate": "ltw.item.stat.intertwined_fate","color":"gold","fallback": "纠缠之缘"}],"fallback": "%1$s 获得了 %2$s"}]
execute unless score $test_mode mem matches 1 if score #bonus_primogem mem matches ..63 run tellraw @s ["",{"text": ">> ","color":"aqua","bold": true},{"translate":"ltw.game.hint.bonus.acquired.me","with": [[{"score": {"name": "#bonus_primogem","objective": "mem"},"color":"aqua"}," ",{"translate": "ltw.item.stat.primogem","color":"aqua","fallback": "原石"}]],"fallback": "你找到了 %s"}]
execute if score $test_mode mem matches 1 if score #bonus_primogem mem matches 64 run tellraw @a ["",{"text": ">> ","color":"red","bold": true},{"selector": "@s","color":"red"},{"text":" 没有获得纠缠之缘，因为测试模式已开启","color": "red"}]
execute if score $test_mode mem matches 1 if score #bonus_primogem mem matches ..63 run tellraw @s ["",{"text": ">> ","color":"red","bold": true},{"text": "你没有获得原石，因为测试模式已开启","color": "red"}]