# 物品处理
execute as @e[type=item] at @s if data entity @s Item.tag.element run function mini:element/game/item/try_pick
execute as @e[type=item] at @s if data entity @s Item.tag.shard run function mini:element/game/item/try_shard

# 清除所有传送点的已被传送标签
tag @e remove teleported

# 玩家属性设置
execute as @a[tag=mini_running] run attribute @s generic.max_health base set 24

# 重生玩家的方法
execute as @a[tag=mini_running,tag=respawning] run function mini:element/game/player/respawning

# 元素标记处理
execute as @e[tag=element_marker] at @s run function mini:element/game/marker/element

# 给予木剑
execute as @a[tag=mini_running] unless data entity @s Inventory[{Slot: 8b, id: "minecraft:wooden_sword", tag: {game_item: 1b}}] run function mini:element/game/player/give_sword

# 感电处理
execute as @e[tag=player_storage,tag=gandian,scores={countdown_fast=..0}] run function mini:element/game/element/reaction_gandian_apply

# 清除展示实体
kill @e[type=text_display,scores={countdown_fast=0}]

# 玩家信息显示
execute as @a[tag=mini_running] at @s run function mini:element/game/player/display

# 检测出界玩家
execute as @a at @s if block ~ 76 ~ stone_bricks run function mini:element/game/damage/out_of_area