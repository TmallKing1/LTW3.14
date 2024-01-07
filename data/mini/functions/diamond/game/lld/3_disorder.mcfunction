# 丢三落四 - 掉落钻石
execute store result score $diamond_temp mem run clear @s diamond 1
execute if score $diamond_temp mem matches 1 run summon item ~ ~ ~ {Item: {id: "minecraft:diamond", Count: 1}, PickupDelay: 60}