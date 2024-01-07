# 幻境干扰触发周期
bossbar set mini:lld players @a
scoreboard players add $period_lld mem 1
execute store result score $random mem run random value -5..5
execute store result bossbar mini:lld value run scoreboard players operation $period_lld mem += $random mem
execute if score $period_lld mem >= $period_lld_warn mem run bossbar set mini:lld color purple
execute if score $period_lld mem >= $period_lld_warn mem run bossbar set mini:lld name [{"text": "! 幻境发生错乱 !","color": "#6700C1"}]
execute if score $period_lld mem >= $period_lld_warn mem if score $period_lld_warned mem matches 0 as @a[tag=mini_running] at @s run playsound minecraft:entity.villager.trade player @s
execute if score $period_lld mem >= $period_lld_warn mem if score $period_lld_warned mem matches 0 run title @a[tag=mini_running] actionbar {"text": "⚠ 幻境干扰即将发生","color": "gold"}
execute if score $period_lld mem >= $period_lld_warn mem if score $period_lld_warned mem matches 0 run scoreboard players set $period_lld_warned mem 1
execute if score $period_lld mem < $period_lld_warn mem run bossbar set mini:lld color pink
execute if score $period_lld mem < $period_lld_warn mem run bossbar set mini:lld name [{"text": "| 幻境不稳定度 |","color": "#EC00B8"}]

# 幻境干扰触发
execute if score $period_lld mem >= $period_lld_max mem run function mini:main/lld/period_trigger