# 向单个玩家展示小游戏介绍
tp @s[team=!debugging] 1012.57 72.12 15012.20 317.90 14.98
effect give @s[team=!debugging] night_vision infinite 0 true
tellraw @s ["",{"text":"\n >> 元素战争 >>  ","color":"red","bold":true},{"text": "地图：Hex-Dragon  改图 & 作者：小猪之最Thepig","color": "aqua"},"\n\n 潜行拾取场地中的 ",{"text":"风 岩 雷 水 火 冰","color": "gold"}," 元素来为木剑附魔，\n 并依靠附着元素的木剑与 ",{"text": "元素反应","color": "gold","underlined": true,"hoverEvent": {"action": "show_text","value": {"text": "可在大厅查看元素反应相关细节。\n如了解过《原神》中的元素反应，可将其近似代入该小游戏。"}}}," 击杀其他玩家！\n ",{"text":"击杀数最多的玩家","color":"gold"}," 即可获胜！\n\n",{"text": " <已结束的活动游戏> ","color":"dark_aqua"},{"text": " <可以杀死玩家> ","color":"red"},{"text": " <无法钓鱼> ","color": "light_purple"},"\n "]
execute if score $ley_line_disorder mem matches 1 run tellraw @s ["",{"text": " ▶ 幻境干扰: ","color": "#7B68EE"},{"text": "没有伤害冷却！（使用连点器为作弊行为）\n "}]
