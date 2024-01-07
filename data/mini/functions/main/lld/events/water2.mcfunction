# 每个玩家的位置生成一个标记
execute as @a[tag=mini_running] at @s run summon marker ~ ~ ~ {Tags: ["water"]}

# 将每个玩家位置的标记主人改为自己
execute as @a[tag=mini_running] at @s run data modify entity @e[type=marker,limit=1,sort=nearest,tag=water] data.owner set from entity @s UUID

# 传送玩家
execute as @a[tag=mini_running] at @s run function mini:main/lld/events/water3

# 清理标记以防bug
kill @e[tag=water]