# 丢三落四 - 掉落铁锭或粗铁
scoreboard players reset $iron_temp
scoreboard players reset $iron_temp1
execute store result score $iron_temp mem run clear @s iron_ingot 1
execute if score $iron_temp mem matches 1 run summon item ~ ~ ~ {Item: {id: "minecraft:iron_ingot", Count: 1}, PickupDelay: 60}
execute unless score $iron_temp mem matches 1 store result score $iron_temp1 mem run clear @s raw_iron 1
execute if score $iron_temp1 mem matches 1 run summon item ~ ~ ~ {Item: {id: "minecraft:raw_iron", Count: 1}, PickupDelay: 60}