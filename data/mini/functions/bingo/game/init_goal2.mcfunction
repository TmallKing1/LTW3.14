scoreboard players add $initialized_goals mem 1

# 确定目标编号
function mini:bingo/game/init_goal3
scoreboard players operation $goal_id mem = $random mem

# 根据目标编号生成目标
execute if score $goal_id mem matches 1 run summon marker 0 3 0 {Tags:["bingo_entity","bingo_goal","new_marker"],data:{displayName: '{"translate":"block.minecraft.enchanting_table"}'}}
execute if score $goal_id mem matches 2 run summon marker 0 3 0 {Tags:["bingo_entity","bingo_goal","new_marker"],data:{displayName: '{"translate":"block.minecraft.anvil"}'}}
execute if score $goal_id mem matches 3 run summon marker 0 3 0 {Tags:["bingo_entity","bingo_goal","new_marker"],data:{displayName: '{"translate":"block.minecraft.jukebox"}'}}
execute if score $goal_id mem matches 4 run summon marker 0 3 0 {Tags:["bingo_entity","bingo_goal","new_marker"],data:{displayName: '{"translate":"item.minecraft.hopper_minecart"}'}}
execute if score $goal_id mem matches 5 run summon marker 0 3 0 {Tags:["bingo_entity","bingo_goal","new_marker"],data:{displayName: '{"translate":"block.minecraft.trapped_chest"}'}}
execute if score $goal_id mem matches 6 run summon marker 0 3 0 {Tags:["bingo_entity","bingo_goal","new_marker"],data:{displayName: '{"translate":"block.minecraft.hay_block"}'}}
execute if score $goal_id mem matches 7 run summon marker 0 3 0 {Tags:["bingo_entity","bingo_goal","new_marker"],data:{displayName: '{"translate":"item.minecraft.armor_stand"}'}}
execute if score $goal_id mem matches 8 run summon marker 0 3 0 {Tags:["bingo_entity","bingo_goal","new_marker"],data:{displayName: '{"translate":"block.minecraft.yellow_concrete"}'}}
execute if score $goal_id mem matches 9 run summon marker 0 3 0 {Tags:["bingo_entity","bingo_goal","new_marker"],data:{displayName: '{"translate":"block.minecraft.smoker"}'}}
execute if score $goal_id mem matches 10 run summon marker 0 3 0 {Tags:["bingo_entity","bingo_goal","new_marker"],data:{displayName: '{"translate":"block.minecraft.grindstone"}'}}
execute if score $goal_id mem matches 11 run summon marker 0 3 0 {Tags:["bingo_entity","bingo_goal","new_marker"],data:{displayName: '{"translate":"block.minecraft.lectern"}'}}
execute if score $goal_id mem matches 12 run summon marker 0 3 0 {Tags:["bingo_entity","bingo_goal","new_marker"],data:{displayName: '{"translate":"block.minecraft.lantern"}'}}
execute if score $goal_id mem matches 13 run summon marker 0 3 0 {Tags:["bingo_entity","bingo_goal","new_marker"],data:{displayName: '{"translate":"item.minecraft.diamond_chestplate"}'}}
execute if score $goal_id mem matches 14 run summon marker 0 3 0 {Tags:["bingo_entity","bingo_goal","new_marker"],data:{displayName: '{"translate":"block.minecraft.mossy_stone_bricks"}'}}
execute if score $goal_id mem matches 15 run summon marker 0 3 0 {Tags:["bingo_entity","bingo_goal","new_marker"],data:{displayName: '{"translate":"block.minecraft.lodestone"}'}}
execute if score $goal_id mem matches 16 run summon marker 0 3 0 {Tags:["bingo_entity","bingo_goal","new_marker"],data:{displayName: '{"translate":"block.minecraft.stonecutter"}'}}
execute if score $goal_id mem matches 17 run summon marker 0 3 0 {Tags:["bingo_entity","bingo_goal","new_marker"],data:{displayName: '[{"translate":"item.minecraft.rotten_flesh"}," x12"]'}}
execute if score $goal_id mem matches 18 run summon marker 0 3 0 {Tags:["bingo_entity","bingo_goal","new_marker"],data:{displayName: '{"translate":"item.minecraft.apple"}'}}
execute if score $goal_id mem matches 19 run summon marker 0 3 0 {Tags:["bingo_entity","bingo_goal","new_marker"],data:{displayName: '{"translate":"block.minecraft.light_gray_stained_glass"}'}}
execute if score $goal_id mem matches 20 run summon marker 0 3 0 {Tags:["bingo_entity","bingo_goal","new_marker"],data:{displayName: '{"translate":"block.minecraft.mossy_cobblestone_wall"}'}}
execute if score $goal_id mem matches 21 run summon marker 0 3 0 {Tags:["bingo_entity","bingo_goal","new_marker"],data:{displayName: '{"translate":"block.minecraft.cracked_stone_bricks"}'}}
execute if score $goal_id mem matches 22 run summon marker 0 3 0 {Tags:["bingo_entity","bingo_goal","new_marker"],data:{displayName: '{"translate":"block.minecraft.rail"}'}}
execute if score $goal_id mem matches 23 run summon marker 0 3 0 {Tags:["bingo_entity","bingo_goal","new_marker"],data:{displayName: '{"translate":"item.minecraft.diamond_hoe"}'}}
execute if score $goal_id mem matches 24 run summon marker 0 3 0 {Tags:["bingo_entity","bingo_goal","new_marker"],data:{displayName: '{"translate":"block.minecraft.piston"}'}}
execute if score $goal_id mem matches 25 run summon marker 0 3 0 {Tags:["bingo_entity","bingo_goal","new_marker"],data:{displayName: '{"translate":"block.minecraft.detector_rail"}'}}
execute if score $goal_id mem matches 26 run summon marker 0 3 0 {Tags:["bingo_entity","bingo_goal","new_marker"],data:{displayName: '{"translate":"block.minecraft.repeater"}'}}
execute if score $goal_id mem matches 27 run summon marker 0 3 0 {Tags:["bingo_entity","bingo_goal","new_marker"],data:{displayName: '{"translate":"item.minecraft.compass"}'}}
execute if score $goal_id mem matches 28 run summon marker 0 3 0 {Tags:["bingo_entity","bingo_goal","new_marker"],data:{displayName: '{"translate":"block.minecraft.activator_rail"}'}}
execute if score $goal_id mem matches 29 run summon marker 0 3 0 {Tags:["bingo_entity","bingo_goal","new_marker"],data:{displayName: '{"translate":"block.minecraft.chiseled_sandstone"}'}}
execute if score $goal_id mem matches 30 run summon marker 0 3 0 {Tags:["bingo_entity","bingo_goal","new_marker"],data:{displayName: '{"translate":"block.minecraft.cut_sandstone"}'}}
execute if score $goal_id mem matches 31 run summon marker 0 3 0 {Tags:["bingo_entity","bingo_goal","new_marker"],data:{displayName: '{"translate":"block.minecraft.campfire"}'}}
execute if score $goal_id mem matches 32 run summon marker 0 3 0 {Tags:["bingo_entity","bingo_goal","new_marker"],data:{displayName: '[{"translate":"block.minecraft.stripped_oak_wood"}," x12"]'}}
execute if score $goal_id mem matches 33 run summon marker 0 3 0 {Tags:["bingo_entity","bingo_goal","new_marker"],data:{displayName: '{"translate":"block.minecraft.fletching_table"}'}}
execute if score $goal_id mem matches 34 run summon marker 0 3 0 {Tags:["bingo_entity","bingo_goal","new_marker"],data:{displayName: '{"translate":"block.minecraft.note_block"}'}}
execute if score $goal_id mem matches 35 run summon marker 0 3 0 {Tags:["bingo_entity","bingo_goal","new_marker"],data:{displayName: '{"translate":"block.minecraft.chiseled_stone_bricks"}'}}
execute if score $goal_id mem matches 36 run summon marker 0 3 0 {Tags:["bingo_entity","bingo_goal","new_marker"],data:{displayName: '{"translate":"block.minecraft.dispenser"}'}}

# 后期处理
scoreboard players operation @e[tag=new_marker] goal_id = $goal_id mem
scoreboard players operation @e[tag=new_marker] goal_pos = $initialized_goals mem
tag @e remove new_marker

# 进行下轮目标生成
execute if score $initialized_goals mem matches 1..8 run function mini:bingo/game/init_goal2