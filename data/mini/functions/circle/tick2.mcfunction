# 重生玩家的方法
execute as @a[tag=mini_running,tag=respawning] run function mini:circle/game/respawning

# 清除拴绳物品
kill @e[type=item,nbt={Item: {id: "minecraft:lead"}}]

# 生成美西螈
execute as @a[tag=summon_axolotl] at @s run function mini:circle/game/summon_leashed_axolotl

# 给予拴绳
execute as @a[tag=mini_running] unless data entity @s Inventory[{Slot: 8b, id: "minecraft:lead", tag: {game_item: 1b}}] run function mini:circle/game/give_lead

# 美西螈给予状态效果
effect give @e[type=axolotl] resistance infinite 4 true

# 美西螈拴绳绑定
execute as @e[type=axolotl,tag=!leashed] run function mini:circle/game/leash_axolotl

# 美西螈解除拴接
execute as @e[type=axolotl,tag=leashed] unless data entity @s Leash.UUID at @s run tp @s ~ -100 ~
execute as @e[type=axolotl,tag=leashed] unless data entity @s Leash.UUID at @s run kill @s

# 美西螈旋转
execute as @e[type=axolotl,tag=leashed] at @s run function mini:circle/game/axolotl_spin