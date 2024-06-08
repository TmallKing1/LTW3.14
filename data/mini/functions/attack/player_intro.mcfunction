# 向单个玩家展示小游戏介绍
tp @s[team=!debugging] 1012.33 12.13 7006.82 -28.40 23.85
effect give @s night_vision infinite 0 true
tellraw @s ["",{"text":"\n >> 发动总攻 >>  ","color":"red","bold":true},"\n\n 使用获得的道具对劫掠兽造成 ",{"text":"尽可能多的伤害","color":"gold"}," 吧！\n\n",{"text": " <无法攻击玩家> ","color":"green"},"\n "]

# 加载数据包
datapack enable "file/bypass_cooldown"