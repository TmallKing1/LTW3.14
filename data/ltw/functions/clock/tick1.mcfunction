# 每 1 Tick 执行一次

# 不祥之兆
execute as @e[nbt={active_effects: [{id: "minecraft:bad_omen", amplifier: 1b}]}] run function ltw:special/bad_omen_1

# 在线时间
execute as @a run function ltw:main/online_time

# 背景音乐
function tgciy:tick

# 检查系统重置情况
scoreboard objectives add mem dummy "全局变量"
execute unless score #10 mem matches 10 run function ltw:init

# 对箭的处理
function item:special/arrow

# 调用其他模块
execute if score $state mem matches 0 run function ltw:state/0/tick1
execute if score $state mem matches 5 run function ltw:state/5/tick1

# 不死图腾
scoreboard players set @a adv_totem 0
execute unless score $state mem matches 0 as @a store result score @s adv_totem run clear @s totem_of_undying 0
execute unless score $state mem matches 0 run advancement grant @a[scores={adv_totem=10..}] only ltw:egg/game/totem