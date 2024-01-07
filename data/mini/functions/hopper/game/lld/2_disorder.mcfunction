# 折跃灵泉 TP
tag @r[distance=0.01..,team=playing,tag=mini_running] add tp_target
effect give @s absorption 10 1
tp @p[tag=tp_target]
tellraw @s ["",{"text": ">> ","color": "aqua","bold": true},"你传送到了 ",{"selector":"@a[tag=tp_target]","color": "aqua"}," 的位置！"]
tellraw @a[tag=tp_target] ["",{"text": ">> ","color": "red","bold": true},{"selector":"@s","color": "red"},{"text": " 传送到了你的位置！","color": "red"}]
tag @a remove tp_target