scoreboard players set $ley_line_disorder mem 0
scoreboard players set $lld_prepare mem 1
execute store result score $lld_temp mem run random value 1..4
kill @e[type=marker,tag=lld]
execute if score $lld_temp mem matches 1 run summon marker ~ ~ ~ {Tags: ["lld"], CustomName: '"速灭之火"', data: {length_title: 4, length_desc: 11, description: '"着火的玩家攻击伤害翻倍"'}}
execute if score $lld_temp mem matches 2 run summon marker ~ ~ ~ {Tags: ["lld"], CustomName: '"折跃灵泉"', data: {length_title: 4, length_desc: 27, description: '"饮用药水或水瓶的玩家会获得少量护盾，并传送到其他玩家处"'}}
execute if score $lld_temp mem matches 3 run summon marker ~ ~ ~ {Tags: ["lld"], CustomName: '"物价波动"', data: {length_title: 4, length_desc: 20, description: '"每隔一段时间，所有物品的价值都会发生变化"', period: 400}}
execute if score $lld_temp mem matches 4 run summon marker ~ ~ ~ {Tags: ["lld"], CustomName: '"连锁换位"', data: {length_title: 4, length_desc: 18, description: '"每隔一段时间，所有人就会随机交换位置"', period: 350}}
title @a times 0t 20t 0t