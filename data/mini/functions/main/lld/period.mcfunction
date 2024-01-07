execute store result score $period_lld_max mem run data get entity @e[type=marker,tag=lld,limit=1] data.period
scoreboard players operation $period_lld_warn mem = $period_lld_max mem
scoreboard players remove $period_lld_warn mem 50
scoreboard players set $period_lld mem 0
scoreboard players set $period_lld_warned mem 0
bossbar set mini:lld visible true
bossbar set mini:lld color pink
bossbar set mini:lld name [{"text": "| 幻境稳定程度 |","color": "#EC00B8"}]
execute store result bossbar mini:lld max run scoreboard players get $period_lld_max mem