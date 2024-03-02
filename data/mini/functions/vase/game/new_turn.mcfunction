# 清理原有罐子
fill 2016 6 2002 2051 6 2021 air

# 按照游戏中人数生成罐子：40 个（基础）+ 10 个 * 人数
scoreboard players operation $vase_count mem = $player_alive mem
scoreboard players operation $vase_count mem *= #10 mem
scoreboard players add $vase_count mem 40

# 加回合数
scoreboard players add $current_turn mem 1

# 调用罐子生成函数
function mini:vase/game/place_vase

# 播放音效
execute as @a[team=!debugging] at @s run function lib:sounds/hit

# 显示标题
title @a[team=!debugging] times 10t 1s 10t
title @a[team=!debugging] subtitle ["第 ",{"score":{"name": "$current_turn","objective": "mem"},"color": "gold"}," 回合"]
title @a[team=!debugging] title ""

# 设置最大生命值
execute if score $current_turn mem matches 1 as @a[tag=mini_running] run attribute @s generic.max_health base set 20
execute if score $current_turn mem matches 2 as @a[tag=mini_running] run attribute @s generic.max_health base set 18
execute if score $current_turn mem matches 3 as @a[tag=mini_running] run attribute @s generic.max_health base set 16
execute if score $current_turn mem matches 4 as @a[tag=mini_running] run attribute @s generic.max_health base set 14
execute if score $current_turn mem matches 5 as @a[tag=mini_running] run attribute @s generic.max_health base set 12
execute if score $current_turn mem matches 6 as @a[tag=mini_running] run attribute @s generic.max_health base set 10
execute if score $current_turn mem matches 7 as @a[tag=mini_running] run attribute @s generic.max_health base set 8
execute if score $current_turn mem matches 8 as @a[tag=mini_running] run attribute @s generic.max_health base set 6
execute if score $current_turn mem matches 9 as @a[tag=mini_running] run attribute @s generic.max_health base set 4
execute if score $current_turn mem matches 10 as @a[tag=mini_running] run attribute @s generic.max_health base set 2
effect give @a[tag=mini_running] instant_damage

# 设置倒计时：20 秒
scoreboard players set $countdown mem 20