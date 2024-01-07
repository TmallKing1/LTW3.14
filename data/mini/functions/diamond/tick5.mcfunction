
# 更新钻石数量
execute as @a[team=playing] store result score @s diamond_count run clear @s diamond 0
execute as @a[team=playing] run scoreboard players operation @s diamond_disp = @s diamond_count
execute if score $countdown mem matches ..90 run effect give @a[team=playing,tag=!invisible] glowing infinite 0 true
execute if score $countdown mem matches ..90 run effect clear @a[team=playing,tag=invisible] glowing

# 钻石发光
execute as @e[type=item,nbt={Item: {id: "minecraft:diamond"}}] run data modify entity @s Glowing set value 1b
