# 向单个玩家展示小游戏介绍
tp @s[team=!debugging] 1062.43 22.00 4012.88 136.56 30.58
effect give @s night_vision infinite 0 true
execute if score $ley_line_disorder mem matches 0.. run tellraw @s ["",{"text":"\n >> 色彩迷阵 >>  ","color":"light_purple","bold":true},{"text": "作者：Hex-Dragon","color": "aqua"},"\n\n 站在 ",{"text":"与墙壁相同的方块","color":"gold"}," 上！\n 倒计时结束时, 与墙壁不相同的地板都会消失！\n\n",{"text": " <只能击退玩家> ","color":"yellow"},"\n "]
execute if score $ley_line_disorder mem matches 1 run tellraw @s ["",{"text": " ▶ 幻境干扰: ","color": "#7B68EE"},{"text": "地板消失速度无上限（满速进度照常给予）。\n "}]
execute if score $ley_line_disorder mem matches 2 run tellraw @s ["",{"text": " ▶ 幻境干扰: ","color": "#7B68EE"},{"text": "钻石块的生成数量大幅增加。\n "}]
execute if score $ley_line_disorder mem matches 3 run tellraw @s ["",{"text": " ▶ 幻境干扰: ","color": "#7B68EE"},{"text": "每一轮的目标方块不会显示在快捷栏最后一格。\n "}]

execute if score $ley_line_disorder mem matches -1 run tellraw @s ["",{"text":"\n >> 色彩迷阵 >>  ","color":"dark_red","bold":true},{"text": "作者：Hex-Dragon","color": "aqua"},"\n\n 墙壁上的方块为 ",{"text":"下一轮","color":"gold"}," 不会消失的方块而非本轮，\n 同时每当你落地，脚下的方块类型都会改变！\n\n",{"text": " <只能击退玩家> ","color":"yellow"},"\n "]
execute if score $ley_line_disorder mem matches -1 if score $color_match_floor_real mem matches 1 run tellraw @s ["",{"text": " ▶ 第一轮将要消失的方块为：","color": "#7B68EE"},{"translate":"block.minecraft.acacia_planks"},"\n"]
execute if score $ley_line_disorder mem matches -1 if score $color_match_floor_real mem matches 2 run tellraw @s ["",{"text": " ▶ 第一轮将要消失的方块为：","color": "#7B68EE"},{"translate":"block.minecraft.birch_planks"},"\n"]
execute if score $ley_line_disorder mem matches -1 if score $color_match_floor_real mem matches 3 run tellraw @s ["",{"text": " ▶ 第一轮将要消失的方块为：","color": "#7B68EE"},{"translate":"block.minecraft.soul_soil"},"\n"]
execute if score $ley_line_disorder mem matches -1 if score $color_match_floor_real mem matches 4 run tellraw @s ["",{"text": " ▶ 第一轮将要消失的方块为：","color": "#7B68EE"},{"translate":"block.minecraft.crimson_planks"},"\n"]
execute if score $ley_line_disorder mem matches -1 if score $color_match_floor_real mem matches 5 run tellraw @s ["",{"text": " ▶ 第一轮将要消失的方块为：","color": "#7B68EE"},{"translate":"block.minecraft.warped_planks"},"\n"]
execute if score $ley_line_disorder mem matches -1 if score $color_match_floor_real mem matches 6 run tellraw @s ["",{"text": " ▶ 第一轮将要消失的方块为：","color": "#7B68EE"},{"translate":"block.minecraft.purpur_block"},"\n"]
execute if score $ley_line_disorder mem matches -1 if score $color_match_floor_real mem matches 7 run tellraw @s ["",{"text": " ▶ 第一轮将要消失的方块为：","color": "#7B68EE"},{"translate":"block.minecraft.bricks"},"\n"]
execute if score $ley_line_disorder mem matches -1 if score $color_match_floor_real mem matches 8 run tellraw @s ["",{"text": " ▶ 第一轮将要消失的方块为：","color": "#7B68EE"},{"translate":"block.minecraft.mossy_cobblestone"},"\n"]