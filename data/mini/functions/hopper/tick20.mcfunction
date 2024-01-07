xp set @a 0 points

# 剩余时间 Bossbar 显示
function mini:main/lld/time_bossbar

# 幻境干扰时剩余时间 Bossbar 的显示模式调整
execute unless score $ley_line_disorder mem matches 0 run function mini:main/lld/display_mode

# 显示倒计时
execute if score $countdown mem matches ..10 run title @a times 3t 14t 2t
execute if score $countdown mem matches ..10 run title @a subtitle {"score":{"name":"$countdown","objective":"mem"}}
execute if score $countdown mem matches ..10 run title @a title [""]
execute if score $countdown mem matches ..10 as @a at @s run function lib:sounds/hit2

# 350s：教学
execute if score $countdown mem matches 350 run tellraw @a[team=playing] [{"text":"\n>> ","color":"light_purple","bold": true},{"text":"提示：在工作台内使用八个粗铁环绕一个箱子即可合成漏斗矿车！","bold":false},"\n "]

# 180s：设置幻境干扰
execute if score $countdown mem matches 180 unless score #gamemode mem matches 1 run function mini:hopper/game/lld/init_lld

# 150s：雷达提示
execute if score $countdown mem matches 150 run title @a subtitle {"text":"⚠ 玩家雷达将在三十秒后开启！ ⚠","color":"yellow"}
execute if score $countdown mem matches 150 run title @a times 1t 100t 3t
execute if score $countdown mem matches 150 run title @a title ""
execute if score $countdown mem matches 150 run scoreboard players set $bossbar_color mem 2
execute if score $countdown mem matches 150 run function lib:bossbar/show

# 120s：雷达开启
execute if score $countdown mem matches 121 as @a run function lib:sounds/music/mini_fast
execute if score $countdown mem matches 120 run title @a subtitle {"text":"⚠ 玩家雷达已开启！ ⚠","color":"red"}
execute if score $countdown mem matches 120 run title @a times 1t 120t 3t
execute if score $countdown mem matches 120 run title @a title ""
execute if score $countdown mem matches 120 run scoreboard players set $bossbar_color mem 1
execute if score $countdown mem matches 120 run function lib:bossbar/show
execute if score $countdown mem matches 120 run playsound minecraft:entity.ender_dragon.growl player @a 0 1000000 0 1000000 1.5

# 60s：时间提示
execute if score $countdown mem matches 60 run title @a subtitle {"text":"⚠ 最后一分钟！ ⚠","color":"yellow"}
execute if score $countdown mem matches 60 run title @a times 1t 50t 3t
execute if score $countdown mem matches 60 run title @a title ""

# 30s：时间提示
execute if score $countdown mem matches 30 run title @a subtitle {"text":"⚠ 最后三十秒！ ⚠","color":"yellow"}
execute if score $countdown mem matches 30 run title @a times 1t 50t 3t
execute if score $countdown mem matches 30 run title @a title ""

# 0s：游戏结束
execute if score $countdown mem matches 0 run function mini:main/game_end

# 回复生命值
execute if score $foursec mem matches 1 run effect give @a[team=playing] regeneration 1 10 true
execute if score $foursec mem matches 1 run schedule function mini:hopper/game/clear_effect 1t replace

# 重置旁观者分数
scoreboard players reset @a[team=!playing] cash