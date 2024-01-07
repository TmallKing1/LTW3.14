# 向单个玩家展示小游戏介绍
tp @s[team=!debugging] 934.72 31.30 17046.39 -450.53 16.39
effect give @s[team=!debugging] night_vision infinite 0 true
tellraw @s ["",{"text":"\n >> 连锁爆破 >>  ","color":"gold","bold":true},{"text": "地图：Hex-Dragon  作者：小猪之最Thepig","color": "aqua"},"\n\n 将 TNT 放置在地图中，它们会在一段时间后同时爆炸！\n 但只有距离 ",{"text": "任意 TNT","color": "gold"}," 最近的几个玩家会受到爆炸伤害……\n\n",{"text": " <只能击退玩家> ","color":"yellow"},"\n "]
execute if score $ley_line_disorder mem matches 1 run tellraw @s ["",{"text": " ▶ 幻境干扰: ","color": "#7B68EE"},{"text": "每轮结束后，所有玩家都会被重新随机传送。\n "}]
execute if score $ley_line_disorder mem matches 2 run tellraw @s ["",{"text": " ▶ 幻境干扰: ","color": "#7B68EE"},{"text": "TNT 的爆炸时间可能不确定(?)\n "}]