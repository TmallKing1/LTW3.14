# 向单个玩家展示小游戏介绍
tp @s[team=!debugging] 1062.34 27.11 6040.84 461.44 28.30
tellraw @s ["",{"text":"\n >> 月夜狩猎 >>  ","color":"gold","bold":true},{"text": "作者：Hex-Dragon","color": "aqua"},"\n\n 投掷无限供应的三叉戟 ",{"text":"尽量击杀幻翼","color":"gold"}," 吧！\n 击杀发光的幻翼会掉落奖励物品哦！\n\n",{"text": " <无法攻击玩家> ","color":"green"},"\n "]
execute if score $ley_line_disorder mem matches 1 run tellraw @s ["",{"text": " ▶ 幻境干扰: ","color": "#7B68EE"},{"text": "幻翼的体积比正常情况下更大，或许更容易被命中吧？\n "}]
execute if score $ley_line_disorder mem matches 2 run tellraw @s ["",{"text": " ▶ 幻境干扰: ","color": "#7B68EE"},{"text": "你无法复活！但你可以在地图两边的洞内回血……\n "}]
execute if score $ley_line_disorder mem matches 3 run tellraw @s ["",{"text": " ▶ 幻境干扰: ","color": "#7B68EE"},{"text": "部分幻翼会隐形，投掷三叉戟来发现它们的位置！\n "}]