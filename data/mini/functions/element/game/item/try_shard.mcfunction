# 捡起碎片
execute store result score $uuid temp run data get entity @s Item.tag.unpickable[0]
execute as @p[distance=..1,gamemode=!spectator] at @s unless score @s UUID = $uuid temp run function mini:element/game/item/pick_shard
execute unless score @p[distance=..1,gamemode=!spectator] UUID = $uuid temp run kill