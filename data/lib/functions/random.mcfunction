#> lib:random
# @input score random_min mem 最小值
# @input score random_max mem 最大值
# @output score $random mem 结果

$execute store result score $random mem run random value $(random_min)..$(random_max)

#summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["random"],Duration:1}
#execute store result score $random mem run data get entity @e[tag=random,limit=1] UUID[0]
#kill @e[tag=random]
#scoreboard players operation $random_max mem -= $random_min mem
#scoreboard players add $random_max mem 1
#scoreboard players operation $random mem %= $random_max mem
#scoreboard players operation $random mem += $random_min mem
