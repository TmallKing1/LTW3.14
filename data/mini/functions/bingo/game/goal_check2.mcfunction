# 设置缓存量
scoreboard players set $item_amount mem 0
scoreboard players set $quest_complete mem 0

# 根据目标 ID 清除玩家物品
execute if score $goal_id mem matches 1 store result score $item_amount mem run clear @s enchanting_table 0
execute if score $goal_id mem matches 2 store result score $item_amount mem run clear @s anvil 0
execute if score $goal_id mem matches 3 store result score $item_amount mem run clear @s jukebox 0
execute if score $goal_id mem matches 4 store result score $item_amount mem run clear @s hopper_minecart 0
execute if score $goal_id mem matches 5 store result score $item_amount mem run clear @s trapped_chest 0
execute if score $goal_id mem matches 6 store result score $item_amount mem run clear @s hay_block 0
execute if score $goal_id mem matches 7 store result score $item_amount mem run clear @s armor_stand 0
execute if score $goal_id mem matches 8 store result score $item_amount mem run clear @s yellow_concrete 0
execute if score $goal_id mem matches 9 store result score $item_amount mem run clear @s smoker 0
execute if score $goal_id mem matches 10 store result score $item_amount mem run clear @s grindstone 0
execute if score $goal_id mem matches 11 store result score $item_amount mem run clear @s lectern 0
execute if score $goal_id mem matches 12 store result score $item_amount mem run clear @s lantern 0
execute if score $goal_id mem matches 13 store result score $item_amount mem run clear @s diamond_chestplate 0
execute if score $goal_id mem matches 14 store result score $item_amount mem run clear @s mossy_stone_bricks 0
execute if score $goal_id mem matches 15 store result score $item_amount mem run clear @s lodestone 0
execute if score $goal_id mem matches 16 store result score $item_amount mem run clear @s stonecutter 0
execute if score $goal_id mem matches 17 store result score $item_amount mem run clear @s rotten_flesh 0
execute if score $goal_id mem matches 18 store result score $item_amount mem run clear @s apple 0
execute if score $goal_id mem matches 19 store result score $item_amount mem run clear @s light_gray_stained_glass 0
execute if score $goal_id mem matches 20 store result score $item_amount mem run clear @s mossy_cobblestone_wall 0
execute if score $goal_id mem matches 21 store result score $item_amount mem run clear @s cracked_stone_bricks 0
execute if score $goal_id mem matches 22 store result score $item_amount mem run clear @s rail 0
execute if score $goal_id mem matches 23 store result score $item_amount mem run clear @s diamond_hoe 0
execute if score $goal_id mem matches 24 store result score $item_amount mem run clear @s piston 0
execute if score $goal_id mem matches 25 store result score $item_amount mem run clear @s detector_rail 0
execute if score $goal_id mem matches 26 store result score $item_amount mem run clear @s repeater 0
execute if score $goal_id mem matches 27 store result score $item_amount mem run clear @s compass 0
execute if score $goal_id mem matches 28 store result score $item_amount mem run clear @s activator_rail 0
execute if score $goal_id mem matches 29 store result score $item_amount mem run clear @s chiseled_sandstone 0
execute if score $goal_id mem matches 30 store result score $item_amount mem run clear @s cut_sandstone 0
execute if score $goal_id mem matches 31 store result score $item_amount mem run clear @s campfire 0
execute if score $goal_id mem matches 32 store result score $item_amount mem run clear @s stripped_oak_wood 0
execute if score $goal_id mem matches 33 store result score $item_amount mem run clear @s fletching_table 0
execute if score $goal_id mem matches 34 store result score $item_amount mem run clear @s note_block 0
execute if score $goal_id mem matches 35 store result score $item_amount mem run clear @s chiseled_stone_bricks 0
execute if score $goal_id mem matches 36 store result score $item_amount mem run clear @s dispenser

# 根据目标 ID 判断任务是否完成
execute unless score $goal_id mem matches 17 unless score $goal_id mem matches 32 if score $item_amount mem matches 1.. run scoreboard players set $quest_complete mem 1
execute if score $goal_id mem matches 17 if score $item_amount mem matches 12.. run scoreboard players set $quest_complete mem 1
execute if score $goal_id mem matches 32 if score $item_amount mem matches 12.. run scoreboard players set $quest_complete mem 1

# 任务完成时，执行后续操作
execute if score $quest_complete mem matches 1 run function mini:bingo/game/goal_check3