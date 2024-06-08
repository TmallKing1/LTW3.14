# 物品处理
execute as @e[type=item] at @s if data entity @s Item.tag.element run function mini:element/game/item/try_pick
execute as @e[type=item] at @s if data entity @s Item.tag.shard run function mini:element/game/item/try_shard

# 倒计时
scoreboard players remove @a[scores={countdown_attach=1..}] countdown_attach 1
scoreboard players remove @e[scores={countdown_dongjie=1..},tag=player_storage] countdown_dongjie 1

# 清除元素附着
execute as @a[scores={countdown_attach=0}] run function mini:element/game/element/clear_attach

# 清除所有传送点的已被传送标签
tag @e remove teleported

# 重生玩家的方法
execute as @a[tag=mini_running,tag=respawning] run function mini:element/game/player/respawning

# 元素标记处理
execute as @e[tag=element_marker] at @s run function mini:element/game/marker/element

# 清除展示实体
kill @e[type=text_display,scores={countdown_fast=0}]

# 玩家信息显示
execute as @a[tag=mini_running] at @s run function mini:element/game/player/display

# 给予木剑
execute as @a[tag=mini_running] unless data entity @s Inventory[{Slot: 8b, id: "minecraft:wooden_sword", tag: {game_item: 1b}}] run function mini:element/game/player/give_sword

# 检测出界玩家
execute as @a at @s if block ~ 76 ~ stone_bricks run function mini:element/game/damage/out_of_area

# 潜行时间重置
scoreboard players reset @a sneak_time

# 给予进度
#function mini:element/game/player/advancement